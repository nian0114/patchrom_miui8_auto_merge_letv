.class public Lcom/android/internal/telephony/SubscriptionController;
.super Lcom/android/internal/telephony/ISub$Stub;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final EVENT_NA_DATA_TIPS:I = 0x3

.field private static final EVENT_WRITE_MSISDN_DONE:I = 0x1

.field private static final EVENT_WRITE_MSISDN_TIMEOUT:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionController"

.field static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field protected static final VDBG:Z

.field protected static mDefaultFallbackSubId:I

.field protected static mDefaultPhoneId:I

.field protected static sInstance:Lcom/android/internal/telephony/SubscriptionController;

.field protected static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field protected static sSlotIdxToSubId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colorArr:[I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field protected mCM:Lcom/android/internal/telephony/CallManager;

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

.field protected final mLock:Ljava/lang/Object;

.field protected mSuccess:Z

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    .line 196
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 197
    const v0, 0x7fffffff

    sput v0, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    .line 238
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    :cond_0
    const-string v0, "[SubscriptionController] init by Context"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/internal/telephony/ISub$Stub;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController$1;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    .line 250
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    .line 254
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "isub"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 258
    :cond_0
    const-string v0, "[SubscriptionController] init by Phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionController;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->handleNADataTipsEvent()V

    return-void
.end method

.method private broadcastDefaultDataSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultDataSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1688
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1689
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1690
    return-void
.end method

.method private broadcastDefaultSmsSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultSmsSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1536
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1538
    return-void
.end method

.method private broadcastDefaultVoiceSubIdChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastDefaultVoiceSubIdChanged] subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1566
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1567
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1568
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1569
    return-void
.end method

.method private broadcastSimInfoContentChanged()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "intContent"    # I
    .param p4, "stringContent"    # Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    const-string v1, "columnName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "intContent"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "stringContent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const/16 v1, -0x64

    if-eq p3, v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastSimInfoContentChanged] subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[broadcastSimInfoContentChanged] subId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/SubscriptionController;
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "SubscriptionController"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    return-object v0
.end method

.method private getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "queryKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 421
    const/4 v4, 0x0

    .line 422
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 423
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 425
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .line 426
    .local v8, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 429
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    move-object v9, v8

    .line 430
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v9, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 431
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .line 432
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v7, :cond_5

    .line 434
    if-nez v9, :cond_4

    .line 436
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v9, v8

    .line 440
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_0

    .line 442
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    const-string v0, "Query fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    :goto_3
    if-eqz v6, :cond_2

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_2
    return-object v8

    .line 445
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4
    if-eqz v6, :cond_3

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 445
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_6
    move-object v8, v9

    .end local v9    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method private getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 354
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 356
    .local v2, "id":I
    const-string v1, "icc_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "iccId":Ljava/lang/String;
    const-string v1, "sim_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 360
    .local v4, "simSlotIndex":I
    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "displayName":Ljava/lang/String;
    const-string v1, "carrier_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "carrierName":Ljava/lang/String;
    const-string v1, "name_source"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 366
    .local v7, "nameSource":I
    const-string v1, "color"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 368
    .local v8, "iconTint":I
    const-string v1, "number"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 370
    .local v9, "number":Ljava/lang/String;
    const-string v1, "data_roaming"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 373
    .local v10, "dataRoaming":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v17, 0x108045d

    move/from16 v0, v17

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 375
    .local v11, "iconBitmap":Landroid/graphics/Bitmap;
    const-string v1, "mcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 377
    .local v12, "mcc":I
    const-string v1, "mnc"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 380
    .local v13, "mnc":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionCountryIso(I)Ljava/lang/String;

    move-result-object v14

    .line 383
    .local v14, "countryIso":Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 384
    .local v15, "iccIdToPrint":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[getSubInfoRecord] id:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " iccid:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " simSlotIndex:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " displayName:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " nameSource:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " iconTint:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " dataRoaming:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " mcc:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " mnc:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, " countIso:"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v16

    .line 392
    .local v16, "line1Number":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    move-object/from16 v9, v16

    .line 395
    :cond_0
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    return-object v1
.end method

.method private getSubscriptionCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 407
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 408
    const-string v1, ""

    .line 410
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUnusedColor(Ljava/lang/String;I)I
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 459
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "availableSubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    .line 461
    const/4 v1, 0x0

    .line 463
    .local v1, "colorIdx":I
    if-eqz v0, :cond_4

    .line 464
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 466
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v5, v4, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 471
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 472
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v4, v4, v2

    .line 481
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_2
    return v4

    .line 466
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    .end local v3    # "j":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    array-length v5, v5

    rem-int v1, v4, v5

    .line 481
    .end local v2    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->colorArr:[I

    aget v4, v4, v1

    goto :goto_2

    .line 478
    :cond_4
    move v1, p2

    goto :goto_3
.end method

.method private handleNADataTipsEvent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1597
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 1598
    .local v1, "isCard1Insert":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 1599
    .local v2, "isCard2Insert":Z
    const-string v4, "gsm.le.dataTipsForNA"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1600
    .local v3, "isShown":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultDataSubId] isShown ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard1Insert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard2Insert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1601
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.LE_NA_DATA_ACTIVITY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v0, "intent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1604
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1605
    const-string v4, "gsm.le.dataTipsForNA"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDefaultDataSubId] persist.le.dataTipsForNA ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gsm.le.dataTipsForNA"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1609
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 213
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    .line 214
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 219
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    .line 217
    :cond_0
    const-string v0, "SubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SubscriptionController;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 202
    const-class v1, Lcom/android/internal/telephony/SubscriptionController;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 208
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    monitor-exit v1

    return-object v0

    .line 206
    :cond_0
    const-string v0, "SubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isSubInfoReady()Z
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1486
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1495
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-void
.end method

.method private logel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1473
    const-string v0, "SubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void
.end method

.method private logvl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logv(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method protected static printStackTrace(Ljava/lang/String;)V
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2064
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    .line 2065
    .local v4, "re":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StackTrace - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 2067
    .local v5, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x1

    .line 2068
    .local v1, "first":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 2069
    .local v6, "ste":Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_0

    .line 2070
    const/4 v1, 0x0

    .line 2068
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2072
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/SubscriptionController;->slogd(Ljava/lang/String;)V

    goto :goto_1

    .line 2075
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method private setCarrierText(Ljava/lang/String;I)I
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setCarrierText]+ text:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1039
    const-string v4, "setCarrierText"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1044
    .local v0, "identity":J
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1045
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "carrier_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1050
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1051
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static slogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1482
    const-string v0, "SubscriptionController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void
.end method

.method private updateAllDataConnectionTrackers()V
    .locals 4

    .prologue
    .line 1675
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v2

    .line 1676
    .local v0, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] sProxyPhones.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1677
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAllDataConnectionTrackers] phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1679
    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 1677
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1681
    :cond_0
    return-void
.end method

.method private validateSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateSubId subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1848
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1850
    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 1851
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Default sub id passed as parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1853
    :cond_1
    return-void
.end method


# virtual methods
.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 29
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]+ iccId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 768
    const-string v3, "addSubInfoRecord"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 773
    .local v14, "identity":J
    if-nez p1, :cond_0

    .line 774
    :try_start_0
    const-string v3, "[addSubInfoRecord]- null iccId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 775
    const/4 v3, -0x1

    .line 977
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    :goto_0
    return v3

    .line 778
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 779
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sim_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "name_source"

    aput-object v6, v4, v5

    const-string v5, "icc_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 785
    .local v11, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->getUnusedColor(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    .line 787
    .local v9, "color":I
    const/16 v20, 0x0

    .line 789
    .local v20, "setDisplayName":Z
    if-eqz v11, :cond_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_b

    .line 790
    :cond_1
    const/16 v20, 0x1

    .line 791
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 792
    .local v26, "value":Landroid/content/ContentValues;
    const-string v3, "icc_id"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v3, "color"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    const-string v3, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 796
    const-string v3, "carrier_name"

    const-string v4, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 798
    .local v25, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] New record created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    .end local v25    # "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v11, :cond_2

    .line 823
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_2
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "sim_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 831
    if-eqz v11, :cond_8

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 833
    :cond_3
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 837
    .local v22, "subId":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 838
    .local v10, "currentSubId":Ljava/lang/Integer;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 846
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v23

    .line 848
    .local v23, "subIdCountMax":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v12

    .line 850
    .local v12, "defaultSubId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] sSlotIdxToSubId.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " simCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 858
    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 860
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(I)V

    .line 863
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] one sim set defaults to subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 868
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 869
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 877
    .end local v12    # "defaultSubId":I
    .end local v23    # "subIdCountMax":I
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] hashmap("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 878
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v3

    if-nez v3, :cond_3

    .line 881
    .end local v10    # "currentSubId":Ljava/lang/Integer;
    .end local v22    # "subId":I
    :cond_8
    if-eqz v11, :cond_9

    .line 882
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v24

    .line 888
    .local v24, "subIds":[I
    if-eqz v24, :cond_a

    move-object/from16 v0, v24

    array-length v3, v0

    if-nez v3, :cond_12

    .line 890
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]- getSubId failed subIds == null || length == 0 subIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 893
    const/4 v3, -0x1

    .line 977
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 800
    .end local v24    # "subIds":[I
    .end local v26    # "value":Landroid/content/ContentValues;
    :cond_b
    const/4 v3, 0x0

    :try_start_6
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 801
    .restart local v22    # "subId":I
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 802
    .local v18, "oldSimInfoId":I
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 803
    .local v16, "nameSource":I
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 805
    .restart local v26    # "value":Landroid/content/ContentValues;
    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 806
    const-string v3, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 809
    :cond_c
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_d

    .line 810
    const/16 v20, 0x1

    .line 813
    :cond_d
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 814
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 819
    :cond_e
    const-string v3, "[addSubInfoRecord] Record already exists"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 822
    .end local v16    # "nameSource":I
    .end local v18    # "oldSimInfoId":I
    .end local v22    # "subId":I
    .end local v26    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_f

    .line 823
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 977
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "color":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v20    # "setDisplayName":Z
    :catchall_1
    move-exception v3

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 873
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "color":I
    .restart local v10    # "currentSubId":Ljava/lang/Integer;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "setDisplayName":Z
    .restart local v22    # "subId":I
    .restart local v26    # "value":Landroid/content/ContentValues;
    :cond_10
    :try_start_8
    const-string v3, "[addSubInfoRecord] currentSubId != null && currentSubId is valid, IGNORE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2

    .line 881
    .end local v10    # "currentSubId":Ljava/lang/Integer;
    .end local v22    # "subId":I
    :catchall_2
    move-exception v3

    if-eqz v11, :cond_11

    .line 882
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 898
    .restart local v24    # "subIds":[I
    :cond_12
    if-eqz v20, :cond_15

    .line 899
    const-string v17, ""

    .line 900
    .local v17, "nameToSet":Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v13}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    .line 901
    .local v13, "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v24, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    .line 902
    .local v8, "CarrierName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] CarrierName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 905
    invoke-static/range {p2 .. p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 906
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v24, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v21

    .line 907
    .local v21, "spn":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] SimOperatorName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 910
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 912
    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 913
    .local v27, "virSpn":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 914
    move-object/from16 v21, v27

    .line 928
    .end local v27    # "virSpn":Ljava/lang/String;
    :cond_13
    :goto_3
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v13, v8}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 929
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 930
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 931
    invoke-virtual {v13, v8}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 935
    :cond_14
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 936
    move-object/from16 v17, v21

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord] Found, name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 942
    :goto_4
    new-instance v26, Landroid/content/ContentValues;

    .end local v26    # "value":Landroid/content/ContentValues;
    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 943
    .restart local v26    # "value":Landroid/content/ContentValues;
    const-string v3, "display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v24, v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 972
    .end local v8    # "CarrierName":Ljava/lang/String;
    .end local v13    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v17    # "nameToSet":Ljava/lang/String;
    .end local v21    # "spn":Ljava/lang/String;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addSubInfoRecord]- info size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 977
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 918
    .restart local v8    # "CarrierName":Ljava/lang/String;
    .restart local v13    # "mSpnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .restart local v17    # "nameToSet":Ljava/lang/String;
    .restart local v21    # "spn":Ljava/lang/String;
    .restart local v27    # "virSpn":Ljava/lang/String;
    :cond_16
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 919
    .local v19, "operName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 920
    move-object/from16 v21, v19

    goto/16 :goto_3

    .line 939
    .end local v19    # "operName":Ljava/lang/String;
    .end local v27    # "virSpn":Ljava/lang/String;
    :cond_17
    const-string v3, "[addSubInfoRecord] Not found"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5

    .prologue
    .line 1731
    const-string v3, "clearDefaultsForInactiveSubIds"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1734
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1736
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1738
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1740
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1741
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1744
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1745
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1748
    const-string v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1749
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1754
    return-void

    .line 1752
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public clearSubInfo()I
    .locals 5

    .prologue
    .line 1445
    const-string v3, "clearSubInfo"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1450
    .local v0, "identity":J
    :try_start_0
    const-string v3, "[clearSubInfo]+"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1452
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1454
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[clearSubInfo]- no simInfo size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    const/4 v2, 0x0

    .line 1463
    .end local v2    # "size":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v2

    .line 1459
    .restart local v2    # "size":I
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[clearSubInfo]- clear size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public doCrossMapping()V
    .locals 11

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveCTSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2185
    .local v0, "ctSubInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 2186
    const-string v9, "don\'t have CT sim card return"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v6

    .line 2190
    .local v6, "proxyController":Lcom/android/internal/telephony/ProxyController;
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v9

    .line 2191
    .local v3, "len":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[doCrossMapping] num phones="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2194
    new-array v8, v3, [Landroid/telephony/RadioAccessFamily;

    .line 2195
    .local v8, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v2, 0x0

    .line 2196
    .local v2, "isCtCard":Z
    const/4 v5, 0x0

    .local v5, "phoneId":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 2197
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v9, v5

    .line 2199
    .local v4, "phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v1

    .line 2200
    .local v1, "id":I
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    if-ne v1, v9, :cond_2

    .line 2202
    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v7

    .line 2203
    .local v7, "raf":I
    const/4 v2, 0x1

    .line 2208
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[doCrossMapping] phoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " RAF="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 2209
    new-instance v9, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v9, v5, v7}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v9, v8, v5

    .line 2196
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2206
    .end local v7    # "raf":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v7

    .restart local v7    # "raf":I
    goto :goto_2

    .line 2211
    .end local v1    # "id":I
    .end local v4    # "phone":Lcom/android/internal/telephony/PhoneProxy;
    .end local v7    # "raf":I
    :cond_3
    if-eqz v2, :cond_4

    .line 2212
    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    goto :goto_0

    .line 2214
    :cond_4
    const-string v9, "[doCrossMapping] no valid subId\'s found - not updating."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2079
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "Requires DUMP"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2083
    .local v4, "token":J
    :try_start_0
    const-string v6, "SubscriptionController:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultDataSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultVoiceSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSmsSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultDataPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultVoicePhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " defaultSmsPhoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2096
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2097
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " sSlotIdxToSubId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2132
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2099
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2100
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2104
    .local v3, "sirl":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 2105
    const-string v6, " ActiveSubInfoList:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2107
    .local v0, "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2110
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const-string v6, " ActiveSubInfoList: is null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2113
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2116
    if-eqz v3, :cond_3

    .line 2117
    const-string v6, " AllSubInfoList:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 2119
    .restart local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2122
    .end local v0    # "entry":Landroid/telephony/SubscriptionInfo;
    :cond_3
    const-string v6, " AllSubInfoList: is null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2124
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2125
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2127
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2129
    const-string v6, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    return-void
.end method

.method protected enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public getActiveCTSubInfo()Landroid/telephony/SubscriptionInfo;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 2138
    const/4 v1, 0x0

    .line 2139
    .local v1, "ctSubInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2141
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 2143
    const-string v8, "[getActiveCTSubInfo] subInfoList null"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2161
    :goto_0
    return-object v7

    .line 2146
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2147
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 2148
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v6, :cond_2

    .line 2149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LSisHasActiveCTSubInfo uiccCard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " card info is not available"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 2152
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 2153
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    .line 2154
    .local v0, "appType":I
    const/4 v8, 0x3

    if-eq v0, v8, :cond_3

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 2155
    :cond_3
    move-object v1, v4

    .line 2156
    goto :goto_1

    .line 2152
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2160
    .end local v0    # "appType":I
    .end local v2    # "i":I
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HasActiveCTSubInfo: isHasCtCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v7, v1

    .line 2161
    goto :goto_0
.end method

.method public getActiveSubIdList()[I
    .locals 8

    .prologue
    .line 1864
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1865
    .local v3, "simInfoSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubIdList] simInfoSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1867
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 1868
    .local v5, "subIdArr":[I
    const/4 v1, 0x0

    .line 1869
    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1870
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1871
    .local v4, "sub":I
    aput v4, v5, v1

    .line 1872
    add-int/lit8 v1, v1, 0x1

    .line 1873
    goto :goto_0

    .line 1875
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "sub":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubIdList] X subIdArr.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1876
    return-object v5
.end method

.method public getActiveSubInfoCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 690
    const-string v4, "[getActiveSubInfoCount]+"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 692
    const-string v4, "getActiveSubInfoCount"

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 708
    :goto_0
    return v3

    .line 697
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 699
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 701
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_1

    .line 702
    const-string v4, "[getActiveSubInfoCount] records null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 705
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubInfoCount]- count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 706
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getActiveSubInfoCountMax()I
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    return v0
.end method

.method public getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 492
    const-string v6, "getActiveSubscriptionInfo"

    invoke-direct {p0, p2, v6}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v5

    .line 519
    :goto_0
    return-object v1

    .line 497
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 499
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 501
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    .line 502
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 503
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getActiveSubInfoForSubscriber]+ subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 512
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubInfoForSubscriber]- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subInfo=null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v5

    .line 519
    goto :goto_0

    .line 516
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 530
    const-string v6, "getActiveSubscriptionInfoForIccId"

    invoke-direct {p0, p2, v6}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v5

    .line 556
    :goto_0
    return-object v1

    .line 535
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 537
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 539
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_2

    .line 540
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 541
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getActiveSubInfoUsingIccId]+ iccId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 549
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubInfoUsingIccId]+ iccId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subInfo=null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v5

    .line 556
    goto :goto_0

    .line 553
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 8
    .param p1, "slotIdx"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 568
    const-string v6, "getActiveSubscriptionInfoForSimSlotIndex"

    invoke-direct {p0, p2, v6}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v5

    .line 600
    :goto_0
    return-object v1

    .line 573
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 575
    .local v2, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 577
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_3

    .line 578
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 579
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 588
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " subId=null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v5

    .line 600
    goto :goto_0

    .line 593
    :cond_3
    :try_start_2
    const-string v6, "[getActiveSubscriptionInfoForSimSlotIndex]+ subList=null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 597
    .end local v4    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 640
    const-string v3, "[getActiveSubInfoList]+"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 642
    const-string v3, "getActiveSubscriptionInfoList"

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 679
    :goto_0
    return-object v2

    .line 647
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 649
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    const-string v3, "[getActiveSubInfoList] Sub Controller not ready"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 654
    :cond_1
    :try_start_1
    const-string v3, "sim_id>=0"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 657
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    .line 659
    new-instance v3, Lcom/android/internal/telephony/SubscriptionController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionController$2;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getActiveSubInfoList]- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " infos return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 674
    :cond_2
    :try_start_2
    const-string v3, "[getActiveSubInfoList]- no info return"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 679
    .end local v2    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllSubInfoCount(Ljava/lang/String;)I
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 719
    const-string v0, "[getAllSubInfoCount]+"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 721
    const-string v0, "getAllSubInfoCount"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return v6

    .line 726
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 728
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 731
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 732
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 733
    .local v6, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSubInfoCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SUB(s) in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    if-eqz v7, :cond_1

    .line 738
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 745
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 737
    .end local v6    # "count":I
    :cond_2
    if-eqz v7, :cond_3

    .line 738
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_3
    const-string v0, "[getAllSubInfoCount]- no SUB in DB"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 745
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 738
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 745
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 611
    const-string v3, "[getAllSubInfoList]+"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 613
    const-string v3, "getAllSubInfoList"

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    :goto_0
    return-object v2

    .line 618
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 620
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 621
    .local v2, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_1

    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getAllSubInfoList]- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " infos return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 625
    :cond_1
    :try_start_1
    const-string v3, "[getAllSubInfoList]- no info return"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 629
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDefaultDataSubId()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1583
    const-string v1, "persist.le.fixDataSimForNA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1584
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    aget v0, v1, v2

    .line 1590
    :goto_0
    return v0

    .line 1586
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_data_call"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1590
    .local v0, "subId":I
    goto :goto_0
.end method

.method public getDefaultSmsSubId()I
    .locals 4

    .prologue
    .line 1542
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1546
    .local v0, "subId":I
    return v0
.end method

.method public getDefaultSubId()I
    .locals 4

    .prologue
    .line 1501
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1503
    .local v0, "isVoiceCapable":Z
    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    .line 1510
    .local v1, "subId":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    sget v1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 1515
    :cond_0
    return v1

    .line 1507
    .end local v1    # "subId":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .restart local v1    # "subId":I
    goto :goto_0
.end method

.method public getDefaultVoiceSubId()I
    .locals 4

    .prologue
    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_call"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1577
    .local v0, "subId":I
    return v0
.end method

.method protected getDummySubIds(I)[I
    .locals 4
    .param p1, "slotIdx"    # I

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 1425
    .local v2, "numSubs":I
    if-lez v2, :cond_0

    .line 1426
    new-array v0, v2, [I

    .line 1427
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1428
    rsub-int/lit8 v3, p1, -0x2

    aput v3, v0, v1

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1436
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getPhoneId(I)I
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 1380
    const v6, 0x7fffffff

    if-ne p1, v6, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1382
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId] asked for default subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1385
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1387
    const-string v6, "[getPhoneId]- invalid subId return=-1"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1390
    const/4 v2, -0x1

    .line 1415
    :goto_0
    return v2

    .line 1393
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v4

    .line 1394
    .local v4, "size":I
    if-nez v4, :cond_2

    .line 1395
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1396
    .local v2, "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId]- no sims, returning default phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    .end local v2    # "phoneId":I
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1402
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1403
    .local v3, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1405
    .local v5, "sub":I
    if-ne p1, v5, :cond_3

    move v2, v3

    .line 1407
    goto :goto_0

    .line 1411
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "sim":I
    .end local v5    # "sub":I
    :cond_4
    sget v2, Lcom/android/internal/telephony/SubscriptionController;->mDefaultPhoneId:I

    .line 1413
    .restart local v2    # "phoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPhoneId]- subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found return default phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSimStateForSlotIdx(I)I
    .locals 6
    .param p1, "slotIdx"    # I

    .prologue
    .line 1906
    if-gez p1, :cond_0

    .line 1907
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1908
    .local v3, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "invalid slotIdx"

    .line 1925
    .local v0, "err":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimStateForSlotIdx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ordinal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    return v4

    .line 1910
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1911
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 1912
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1913
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "phone == null"

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    .line 1915
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1916
    .local v1, "icc":Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_2

    .line 1917
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1918
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "icc == null"

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0

    .line 1920
    .end local v0    # "err":Ljava/lang/String;
    .end local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 1921
    .restart local v3    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, ""

    .restart local v0    # "err":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, -0x1

    .line 1284
    const v5, 0x7fffffff

    if-ne p1, v5, :cond_0

    .line 1285
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 1287
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1288
    const-string v5, "[getSlotId]- subId invalid"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1312
    :goto_0
    return v2

    .line 1292
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v3

    .line 1294
    .local v3, "size":I
    if-nez v3, :cond_2

    .line 1296
    const-string v5, "[getSlotId]- size == 0, return SIM_NOT_INSERTED instead"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1297
    goto :goto_0

    .line 1300
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1301
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1302
    .local v2, "sim":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1304
    .local v4, "sub":I
    if-ne p1, v4, :cond_3

    goto :goto_0

    .line 1311
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "sim":I
    .end local v4    # "sub":I
    :cond_4
    const-string v5, "[getSlotId]- return fail"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move v2, v6

    .line 1312
    goto :goto_0
.end method

.method public getSubId(I)[I
    .locals 11
    .param p1, "slotIdx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1329
    const v9, 0x7fffffff

    if-ne p1, v9, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result p1

    .line 1331
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId] map default slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1335
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- invalid slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1337
    const/4 v7, 0x0

    .line 1371
    :cond_1
    :goto_0
    return-object v7

    .line 1341
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v4

    .line 1342
    .local v4, "size":I
    if-nez v4, :cond_3

    .line 1344
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- sSlotIdxToSubId.size == 0, return DummySubIds slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v7

    goto :goto_0

    .line 1351
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v8, "subIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1353
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1354
    .local v5, "slot":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1355
    .local v6, "sub":I
    if-ne p1, v5, :cond_4

    .line 1356
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "slot":I
    .end local v6    # "sub":I
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1362
    .local v3, "numSubIds":I
    if-lez v3, :cond_6

    .line 1363
    new-array v7, v3, [I

    .line 1364
    .local v7, "subIdArr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 1365
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v1

    .line 1364
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1370
    .end local v1    # "i":I
    .end local v7    # "subIdArr":[I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getSubId]- numSubIds == 0, return DummySubIds slotIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getDummySubIds(I)[I

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    .line 1783
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1784
    :cond_0
    const/4 v1, -0x1

    .line 1786
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getSubIdUsingSlotId(I)[I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1790
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "slotId"    # I
    .param p2, "needCheck"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubInfoUsingSlotIdWithCheck]+ slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1797
    const-string v2, "getSubInfoUsingSlotIdWithCheck"

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1798
    const/4 v12, 0x0

    .line 1842
    :goto_0
    return-object v12

    .line 1802
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1804
    .local v10, "identity":J
    const v2, 0x7fffffff

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 1805
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result p1

    .line 1807
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1808
    const-string v2, "[getSubInfoUsingSlotIdWithCheck]- invalid slotId"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1809
    const/4 v12, 0x0

    .line 1842
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1812
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubInfoReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1813
    const-string v2, "[getSubInfoUsingSlotIdWithCheck]- not ready"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1814
    const/4 v12, 0x0

    .line 1842
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1817
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "sim_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 1820
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1822
    .local v12, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_5

    move-object v13, v12

    .line 1823
    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .local v13, "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1824
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoRecord(Landroid/database/Cursor;)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 1825
    .local v9, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v9, :cond_9

    .line 1826
    if-nez v13, :cond_8

    .line 1827
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1829
    .end local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_2
    :try_start_4
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    move-object v13, v12

    .line 1831
    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_1

    .end local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    move-object v12, v13

    .line 1834
    .end local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    if-eqz v8, :cond_6

    .line 1835
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1838
    :cond_6
    const-string v2, "[getSubInfoUsingSlotId]- null info return"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1842
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1834
    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v2

    move-object v12, v13

    .end local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :goto_4
    if-eqz v8, :cond_7

    .line 1835
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1842
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1834
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_2
    move-exception v2

    goto :goto_4

    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_8
    move-object v12, v13

    .end local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_2

    .end local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    :cond_9
    move-object v12, v13

    .end local v13    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v12    # "subList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    goto :goto_3
.end method

.method public getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1979
    const-string v1, "getSubInfoUsingSlotIdWithCheck"

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/SubscriptionController;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2024
    :goto_0
    return-object v5

    .line 1982
    :cond_0
    const/4 v7, 0x0

    .line 1983
    .local v7, "resultValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1984
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    aput-object p2, v2, v8

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1990
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 1991
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1992
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 2009
    const-string v1, "Invalid column name"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    :goto_2
    if-eqz v6, :cond_2

    .line 2020
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriptionProperty Query value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    move-object v5, v7

    .line 2024
    goto :goto_0

    .line 1992
    :sswitch_0
    :try_start_1
    const-string v2, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v8

    goto :goto_1

    :sswitch_1
    const-string v2, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v9

    goto :goto_1

    :sswitch_2
    const-string v2, "enable_cmas_amber_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "enable_emergency_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "alert_sound_duration"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "alert_reminder_interval"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "enable_alert_vibrate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "enable_alert_speech"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "enable_etws_test_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "enable_channel_50_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "enable_channel_60_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "enable_cmas_test_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "show_cmas_opt_out_dialog"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    .line 2006
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2007
    goto/16 :goto_2

    .line 2013
    :cond_3
    const-string v1, "Valid row not present in db"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2019
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 2020
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 2016
    :cond_5
    :try_start_2
    const-string v1, "Query failed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1992
    nop

    :sswitch_data_0
    .sparse-switch
        -0x773be030 -> :sswitch_6
        -0x5cb49b9e -> :sswitch_0
        -0x55773f83 -> :sswitch_b
        -0x52e5f19f -> :sswitch_7
        -0x1ef5683c -> :sswitch_a
        -0x1b84c7bf -> :sswitch_3
        -0x14d407f9 -> :sswitch_4
        0xc23defa -> :sswitch_2
        0xe5af4a6 -> :sswitch_c
        0x18468858 -> :sswitch_1
        0x1b9209cf -> :sswitch_5
        0x4bbbb7ac -> :sswitch_8
        0x4cc628c3 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1881
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sSlotIdxToSubId:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1885
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 1881
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCTCard(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 2165
    const/4 v2, 0x0

    .line 2166
    .local v2, "isCtCard":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .line 2167
    .local v3, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v3, :cond_0

    .line 2168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCTCard: uiccCard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " card info is not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2169
    const/4 v4, 0x0

    .line 2179
    :goto_0
    return v4

    .line 2171
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2172
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v0

    .line 2173
    .local v0, "appType":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 2174
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCTCard: slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is CT card  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2175
    const/4 v2, 0x1

    .end local v0    # "appType":I
    :cond_2
    move v4, v2

    .line 2179
    goto :goto_0

    .line 2171
    .restart local v0    # "appType":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isVoicePromptEnabled()Z
    .locals 5

    .prologue
    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 2035
    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2040
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 2043
    :goto_1
    return v0

    .line 2037
    :catch_0
    move-exception v1

    .line 2038
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2040
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected logdl(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mLocalLog:Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->log(Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 2

    .prologue
    .line 334
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    .line 337
    .local v0, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_start_0
    const-string v1, "notifySubscriptionInfoChanged:"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 338
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySubscriptionInfoChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeStaleSubPreferences(Ljava/lang/String;)V
    .locals 7
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 1889
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1890
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1891
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1892
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1893
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1896
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method public setDataRoaming(II)I
    .locals 10
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDataRoaming]+ roaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1226
    const-string v4, "setDataRoaming"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1231
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1232
    if-gez p1, :cond_0

    .line 1233
    const-string v4, "[setDataRoaming]- fail"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    const/4 v2, -0x1

    .line 1248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v2

    .line 1236
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1237
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDataRoaming]- roaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1240
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1243
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1244
    const-string v4, "data_roaming"

    const-string v5, "N/A"

    invoke-direct {p0, p2, v4, p1, v5}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setDefaultDataSubId(I)V
    .locals 13
    .param p1, "subId"    # I

    .prologue
    const/4 v12, 0x0

    .line 1614
    const-string v10, "persist.le.fixDataSimForNA"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1619
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1621
    sget-object v10, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 1622
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v10, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v12, v11}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 1625
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    const-string v10, "setDefaultDataSubId"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1626
    const-string v10, "persist.radio.flexmap_type"

    const-string v11, "nw_mode"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1629
    .local v1, "flexMapSupportType":Ljava/lang/String;
    const v10, 0x7fffffff

    if-ne p1, v10, :cond_1

    .line 1630
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1632
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setDefaultDataSubId] subId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1634
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    .line 1635
    .local v7, "proxyController":Lcom/android/internal/telephony/ProxyController;
    sget-object v10, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v10

    .line 1636
    .local v3, "len":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setDefaultDataSubId] num phones="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dds flex map = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1639
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "dds"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1641
    new-array v9, v3, [Landroid/telephony/RadioAccessFamily;

    .line 1642
    .local v9, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    .line 1643
    .local v0, "atLeastOneMatch":Z
    const/4 v6, 0x0

    .local v6, "phoneId":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 1644
    sget-object v10, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v10, v6

    .line 1646
    .local v5, "phone":Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v2

    .line 1647
    .local v2, "id":I
    if-ne v2, p1, :cond_2

    .line 1649
    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v8

    .line 1650
    .local v8, "raf":I
    const/4 v0, 0x1

    .line 1655
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[setDefaultDataSubId] phoneId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RAF="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1656
    new-instance v10, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v10, v6, v8}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v10, v9, v6

    .line 1643
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1653
    .end local v8    # "raf":I
    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v8

    .restart local v8    # "raf":I
    goto :goto_1

    .line 1658
    .end local v2    # "id":I
    .end local v5    # "phone":Lcom/android/internal/telephony/PhoneProxy;
    .end local v8    # "raf":I
    :cond_3
    if-eqz v0, :cond_5

    .line 1659
    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1666
    .end local v0    # "atLeastOneMatch":Z
    .end local v6    # "phoneId":I
    .end local v9    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->updateAllDataConnectionTrackers()V

    .line 1668
    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_sim_data_call"

    invoke-static {v10, v11, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    .line 1671
    return-void

    .line 1661
    .restart local v0    # "atLeastOneMatch":Z
    .restart local v6    # "phoneId":I
    .restart local v9    # "rafs":[Landroid/telephony/RadioAccessFamily;
    :cond_5
    const-string v10, "[setDefaultDataSubId] no valid subId\'s found - not updating."

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected setDefaultFallbackSubId(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1697
    const v3, 0x7fffffff

    if-ne p1, v3, :cond_0

    .line 1698
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setDefaultSubId called with DEFAULT_SUB_ID"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1700
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1701
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 1703
    .local v2, "phoneId":I
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1705
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] set mDefaultFallbackSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1706
    sput p1, Lcom/android/internal/telephony/SubscriptionController;->mDefaultFallbackSubId:I

    .line 1708
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1709
    .local v0, "defaultMccMnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1712
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1714
    invoke-static {v1, v2, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] broadcast default subId changed phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1719
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1727
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "phoneId":I
    :cond_2
    :goto_0
    return-void

    .line 1722
    .restart local v2    # "phoneId":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDefaultFallbackSubId] not set invalid phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1520
    const-string v0, "setDefaultSmsSubId"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1522
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setDefaultSmsSubId called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDefaultSmsSubId] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_sms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultSmsSubIdChanged(I)V

    .line 1529
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1551
    const-string v0, "setDefaultVoiceSubId"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1553
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setDefaultVoiceSubId called with DEFAULT_SUB_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDefaultVoiceSubId] subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultVoiceSubIdChanged(I)V

    .line 1560
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 1098
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    .locals 11
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDisplayName]+  displayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nameSource:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1116
    const-string v5, "setDisplayNameUsingSrc"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1121
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1123
    if-nez p1, :cond_1

    .line 1124
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v6, 0x104000e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, "nameToSet":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1129
    .local v4, "value":Landroid/content/ContentValues;
    const-string v5, "display_name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-ltz v5, :cond_0

    .line 1131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set nameSource="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1132
    const-string v5, "name_source"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDisplayName]- mDisplayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1136
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1139
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1140
    const-string v5, "display_name"

    const/16 v6, -0x64

    invoke-direct {p0, p2, v5, v6, v2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 1126
    .end local v2    # "nameToSet":Ljava/lang/String;
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_1
    move-object v2, p1

    .restart local v2    # "nameToSet":Ljava/lang/String;
    goto :goto_0

    .line 1144
    .end local v2    # "nameToSet":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 18
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 1156
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setDisplayNumber]+ subId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1158
    const-string v13, "setDisplayNumber"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1163
    .local v6, "identity":J
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1164
    const/4 v11, 0x0

    .line 1165
    .local v11, "result":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v9

    .line 1167
    .local v9, "phoneId":I
    if-eqz p1, :cond_0

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    if-lt v9, v13, :cond_1

    .line 1169
    :cond_0
    const-string v13, "[setDisplayNumber]- fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1170
    const/4 v13, -0x1

    .line 1212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v13

    .line 1172
    :cond_1
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 1173
    .local v12, "value":Landroid/content/ContentValues;
    const-string v13, "number"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    sget-object v13, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v13, v9

    .line 1180
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(I)Ljava/lang/String;

    move-result-object v4

    .line 1182
    .local v4, "alphaTag":Ljava/lang/String;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 1183
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v8, v4, v0, v13}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1184
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    .line 1200
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    if-eqz v13, :cond_2

    .line 1201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1204
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[setDisplayNumber]- update result :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1206
    const-string v13, "number"

    const/16 v14, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v13, v14, v2}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1212
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v13, v11

    goto/16 :goto_0

    .line 1186
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1187
    const/4 v13, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mSuccess:Z

    .line 1188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1189
    .local v10, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    invoke-interface {v8, v4, v0, v10}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SubscriptionController;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1193
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1197
    :goto_2
    :try_start_5
    monitor-exit v14

    goto/16 :goto_1

    .end local v10    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1212
    .end local v4    # "alphaTag":Ljava/lang/String;
    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "phoneId":I
    .end local v11    # "result":I
    .end local v12    # "value":Landroid/content/ContentValues;
    :catchall_1
    move-exception v13

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 1194
    .restart local v4    # "alphaTag":Ljava/lang/String;
    .restart local v8    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v9    # "phoneId":I
    .restart local v10    # "response":Landroid/os/Message;
    .restart local v11    # "result":I
    .restart local v12    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1195
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v13, "interrupted while trying to write MSISDN"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public setIconTint(II)I
    .locals 10
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setIconTint]+ tint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1068
    const-string v4, "setIconTint"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1073
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->validateSubId(I)V

    .line 1074
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1075
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setIconTint]- tint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1078
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1081
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1082
    const-string v4, "color"

    const-string v5, "N/A"

    invoke-direct {p0, p2, v4, p1, v5}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .end local v2    # "result":I
    .end local v3    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMccMnc(Ljava/lang/String;I)I
    .locals 11
    .param p1, "mccMnc"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1259
    const/4 v1, 0x0

    .line 1260
    .local v1, "mcc":I
    const/4 v2, 0x0

    .line 1262
    .local v2, "mnc":I
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1263
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1267
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setMccMnc]+ mcc/mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1268
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1269
    .local v4, "value":Landroid/content/ContentValues;
    const-string v5, "mcc"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string v5, "mnc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v8, p2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1274
    .local v3, "result":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1275
    const-string v5, "mcc"

    invoke-direct {p0, p2, v5, v1, v10}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V

    .line 1276
    return v3

    .line 1264
    .end local v3    # "result":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setMccMnc] - couldn\'t parse mcc/mnc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setPlmnSpn(IZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "showPlmn"    # Z
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "showSpn"    # Z
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 992
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 993
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 994
    .local v3, "subIds":[I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1002
    :cond_0
    const-string v6, "[setPlmnSpn] No valid subscription to store info"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 1004
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged()V

    .line 1005
    monitor-exit v5

    .line 1026
    :goto_0
    return v4

    .line 1007
    :cond_1
    const-string v0, ""

    .line 1008
    .local v0, "carrierText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setPlmnSpn] slotId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " showPlmn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", plmn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", showSpn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", spn = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1009
    if-eqz p2, :cond_3

    .line 1010
    move-object v0, p3

    .line 1011
    if-eqz p4, :cond_2

    .line 1013
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1014
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const v6, 0x10404fe

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1016
    .local v2, "separator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .end local v2    # "separator":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 1024
    aget v4, v3, v1

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/SubscriptionController;->setCarrierText(Ljava/lang/String;I)I

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1020
    .end local v1    # "i":I
    :cond_3
    if-eqz p4, :cond_2

    .line 1021
    move-object v0, p5

    goto :goto_1

    .line 1026
    .restart local v1    # "i":I
    :cond_4
    const/4 v4, 0x1

    monitor-exit v5

    goto :goto_0

    .line 1027
    .end local v0    # "carrierText":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "subIds":[I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setSubState(II)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "subStatus"    # I

    .prologue
    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSubState, subStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2060
    const-string v0, "sub_state"

    const-string v1, "N/A"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastSimInfoContentChanged(ILjava/lang/String;ILjava/lang/String;)V

    .line 2062
    return-void
.end method

.method public setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "propKey"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;

    .prologue
    .line 1939
    const-string v4, "setSubscriptionProperty"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 1940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1941
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1942
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1943
    .local v1, "value":Landroid/content/ContentValues;
    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 1960
    const-string v4, "Invalid column name"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 1964
    :goto_1
    sget-object v4, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1967
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1968
    return-void

    .line 1943
    :sswitch_0
    const-string v5, "enable_cmas_extreme_threat_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "enable_cmas_severe_threat_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "enable_cmas_amber_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "enable_emergency_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "alert_sound_duration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "alert_reminder_interval"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "enable_alert_vibrate"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "enable_alert_speech"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "enable_etws_test_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "enable_channel_50_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "enable_channel_60_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "enable_cmas_test_alerts"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "show_cmas_opt_out_dialog"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_0

    .line 1957
    :pswitch_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1943
    :sswitch_data_0
    .sparse-switch
        -0x773be030 -> :sswitch_6
        -0x5cb49b9e -> :sswitch_0
        -0x55773f83 -> :sswitch_b
        -0x52e5f19f -> :sswitch_7
        -0x1ef5683c -> :sswitch_a
        -0x1b84c7bf -> :sswitch_3
        -0x14d407f9 -> :sswitch_4
        0xc23defa -> :sswitch_2
        0xe5af4a6 -> :sswitch_c
        0x18468858 -> :sswitch_1
        0x1b9209cf -> :sswitch_5
        0x4bbbb7ac -> :sswitch_8
        0x4cc628c3 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setVoicePromptEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2049
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2050
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoicePromptOption to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V

    .line 2053
    return-void

    .line 2049
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 7
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1757
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1758
    if-nez p1, :cond_0

    .line 1759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1776
    :goto_0
    return v3

    .line 1762
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v3, v4

    .line 1765
    goto :goto_0

    .line 1767
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1768
    .local v2, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1769
    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    .line 1770
    if-ne v1, p2, :cond_2

    .line 1771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    move v3, v4

    .line 1772
    goto :goto_0

    .line 1775
    .end local v1    # "id":I
    .end local v2    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->logdl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 1856
    sput-object p1, Lcom/android/internal/telephony/SubscriptionController;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 1857
    return-void
.end method
