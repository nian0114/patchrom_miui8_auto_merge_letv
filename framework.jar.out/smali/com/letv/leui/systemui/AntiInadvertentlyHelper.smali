.class public Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.super Ljava/lang/Object;
.source "AntiInadvertentlyHelper.java"

# interfaces
.implements Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;


# static fields
.field private static final ACTION_LVR_IN:Ljava/lang/String; = "android.intent.action.lvr_hmd_in"

.field private static final ACTION_LVR_OUT:Ljava/lang/String; = "android.intent.action.lvr_hmd_out"

.field private static ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean; = null

.field private static final MSG_SCREEN_TURN_OFF:I = 0x2

.field private static final MSG_SCREEN_TURN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# instance fields
.field private isScreenOn:Z

.field private isSettingEnable:Z

.field private isVrDeviceIn:Z

.field private local:Ljava/util/Locale;

.field private mContext:Landroid/content/Context;

.field private mCoverView:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mLocateChangeRunnable:Ljava/lang/Runnable;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mPM:Landroid/os/PowerManager;

.field mProximitySensorEnabled:Z

.field private mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchAble:Z

.field private mWeatherSettingObserver:Landroid/database/ContentObserver;

.field private mWindowManager:Landroid/view/WindowManager;

.field private resultMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;

    invoke-direct {v1, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;

    invoke-direct {v1, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLocateChangeRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->initSettings()V

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    new-instance v1, Lcom/letv/leui/systemui/ProximitySensorHelper;

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/letv/leui/systemui/ProximitySensorHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v1, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->setStateCallback(Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->loadViews(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.lvr_hmd_in"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.lvr_hmd_out"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->onScreenTurnOff()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    sput-object p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->forceRelease()V

    return-void
.end method

.method static synthetic access$1200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowFocus(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLocateChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private forceRelease()V
    .locals 2

    .prologue
    const v0, 0x8d04

    const-string v1, "forceRelease"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouchPanel()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    :cond_0
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    return-object v0
.end method

.method private initSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "leui_anti_inadvertently"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWeatherSettingObserver:Landroid/database/ContentObserver;

    const-string v1, "leui_anti_inadvertently"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWeatherSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private loadViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v1, 0x1090079

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "cover":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private resetTouchPanel()V
    .locals 3

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTouchPanel,result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0, v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouch(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWindowFocus(Z)V
    .locals 3
    .param p1, "needFocus"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method private updateWindowVisiblity(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v1, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindowVisiblity(),show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCoverView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const v4, 0x800320

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "AntiInadvertently"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const v2, 0x70000004

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v7, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;

    invoke-direct {v1, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_1

    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    const-string v1, "setVisibility(View.GONE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v7}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method public AntiInadevertentlyRelease()V
    .locals 2

    .prologue
    const v0, 0x8d04

    const-string v1, "AntiInadevertentlyRelease"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouchPanel()V

    return-void
.end method

.method public SenosrTimeout()V
    .locals 2

    .prologue
    const v0, 0x8d04

    const-string v1, "SenosrTimeout"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouchPanel()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AntiInadvertentlyHelper.dump()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchAble:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCoverView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " alpha:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " visible:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ENABLE_ANTI_INADVERTENTLY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVrDeviceIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSettingEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/letv/leui/systemui/ProximitySensorHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->loadViews(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resetTouch(Landroid/os/PowerManager;)Z
    .locals 6
    .param p1, "pm"    # Landroid/os/PowerManager;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    iget-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    const-string v4, "resetTouch"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :cond_1
    move v3, v2

    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "result":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "result":I
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "result":I
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "result":I
    :catchall_0
    move-exception v4

    move v3, v2

    .restart local v3    # "result":I
    goto :goto_0
.end method
