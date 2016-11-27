.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMAPhone$2;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMAPhone"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field protected mCarrierOtaSpNumSchema:Ljava/lang/String;

.field mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field protected mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1714
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 158
    const-string v1, "CDMA"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    .line 126
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 129
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSstIcc()V

    .line 160
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPhoneStateChanged()V

    .line 162
    return-void
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .param p0, "sysSelCodeInt"    # I
    .param p1, "sch"    # [Ljava/lang/String;

    .prologue
    .line 1688
    const/4 v2, 0x0

    .line 1691
    .local v2, "isOtaSpNum":Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1692
    .local v5, "selRc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1693
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1694
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1695
    .local v4, "selMin":I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1698
    .local v3, "selMax":I
    if-lt p0, v4, :cond_1

    if-gt p0, v3, :cond_1

    .line 1699
    const/4 v2, 0x1

    .line 1709
    .end local v1    # "i":I
    .end local v3    # "selMax":I
    .end local v4    # "selMin":I
    .end local v5    # "selRc":I
    :cond_0
    :goto_1
    return v2

    .line 1692
    .restart local v1    # "i":I
    .restart local v5    # "selRc":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1704
    .end local v1    # "i":I
    .end local v5    # "selRc":I
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v6, "CDMAPhone"

    const-string v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1664
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1665
    .local v0, "dialStrLen":I
    const/4 v1, -0x1

    .line 1667
    .local v1, "sysSelCodeInt":I
    const-string v2, "*228"

    invoke-virtual {p0, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lt v0, v5, :cond_0

    .line 1673
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1677
    :cond_0
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return v1
.end method

.method private getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 2077
    const/4 v0, 0x0

    .line 2078
    .local v0, "csPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    move-object v2, v1

    .line 2079
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 2080
    .restart local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivePhone: Phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,csPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    return-object v0
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 1
    .param p1, "newSubscriptionSource"    # I

    .prologue
    .line 1523
    iget v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    if-eq p1, v0, :cond_0

    .line 1524
    iput p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    .line 1525
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1527
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendMessage(Landroid/os/Message;)Z

    .line 1530
    :cond_0
    return-void
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1224
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 1229
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1232
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "true"

    invoke-super {p0, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1238
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1240
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1242
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1245
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1247
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string v1, "CDMAPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1253
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1257
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1258
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 1259
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1260
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-super {p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1265
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 1266
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 1268
    :cond_2
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 12
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1735
    const/4 v2, 0x0

    .line 1736
    .local v2, "isOtaSpNum":Z
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v6

    .line 1737
    .local v6, "sysSelCodeInt":I
    if-ne v6, v11, :cond_0

    move v3, v2

    .line 1780
    .end local v2    # "isOtaSpNum":Z
    .local v3, "isOtaSpNum":I
    :goto_0
    return v3

    .line 1741
    .end local v3    # "isOtaSpNum":I
    .restart local v2    # "isOtaSpNum":Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1742
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1744
    .local v4, "m":Ljava/util/regex/Matcher;
    const-string v7, "CDMAPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,schema"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1748
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 1750
    .local v5, "sch":[Ljava/lang/String;
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v10

    const-string v8, "SELC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1751
    if-eq v6, v11, :cond_1

    .line 1752
    invoke-static {v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "sch":[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 1780
    .restart local v3    # "isOtaSpNum":I
    goto :goto_0

    .line 1755
    .end local v3    # "isOtaSpNum":I
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "sch":[Ljava/lang/String;
    :cond_1
    const-string v7, "CDMAPhone"

    const-string v8, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1758
    :cond_2
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v10

    const-string v8, "FC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1759
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1760
    .local v1, "fcLen":I
    const/4 v7, 0x2

    aget-object v0, v5, v7

    .line 1761
    .local v0, "fc":Ljava/lang/String;
    invoke-virtual {p1, v10, v0, v10, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1762
    const/4 v2, 0x1

    goto :goto_1

    .line 1764
    :cond_3
    const-string v7, "CDMAPhone"

    const-string v8, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1768
    .end local v0    # "fc":Ljava/lang/String;
    .end local v1    # "fcLen":I
    :cond_4
    const-string v7, "CDMAPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1773
    .end local v5    # "sch":[Ljava/lang/String;
    :cond_5
    const-string v7, "CDMAPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1778
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_6
    const-string v7, "CDMAPhone"

    const-string v8, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1634
    const/4 v1, 0x0

    .line 1635
    .local v1, "isOtaspDialString":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1637
    .local v0, "dialStrLen":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1638
    const-string v3, "*228"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1639
    const/4 v1, 0x1

    .line 1658
    :cond_0
    :goto_0
    return v1

    .line 1642
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 1643
    .local v2, "sysSelCodeInt":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1652
    :pswitch_0
    const/4 v1, 0x1

    .line 1653
    goto :goto_0

    .line 1643
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
    .end packed-switch
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1835
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1836
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1837
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1838
    return-void
.end method

.method private updateVoiceMail()V
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getStoredVoiceMessageCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setVoiceMessageCount(I)V

    .line 1094
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 567
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1583
    const-string v0, "CDMAPhone"

    const-string v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1585
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    .line 713
    :cond_0
    const-string v0, "CDMAPhone"

    const-string v1, "canConference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 337
    const-string v0, "CDMAPhone"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 393
    return-void
.end method

.method public conference()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "conference() - delegated to IMS phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v0, "CDMAPhone"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 11
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 446
    new-instance v8, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 449
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    .line 450
    .local v4, "isEmergency":Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 452
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isImsUseEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v3, 0x1

    .line 459
    .local v3, "imsUseEnabled":Z
    :goto_0
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112008a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    const/4 v6, 0x1

    .line 466
    .local v6, "useImsForEmergency":Z
    :goto_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 469
    .local v5, "isUt":Z
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    .line 472
    .local v7, "useImsForUt":Z
    :goto_2
    const-string v9, "CDMAPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imsUseEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", useImsForEmergency="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", useImsForUt="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", isUt="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imsPhone="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imsPhone.isVowifiEnabled()="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imsPhone.isVideoCallEnabled()="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVideoCallEnabled()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_5
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V

    .line 489
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    if-nez v7, :cond_3

    :cond_2
    if-eqz v6, :cond_b

    .line 491
    :cond_3
    :try_start_0
    const-string v8, "CDMAPhone"

    const-string v9, "Trying IMS PS call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 509
    :goto_7
    return-object v8

    .line 452
    .end local v3    # "imsUseEnabled":Z
    .end local v5    # "isUt":Z
    .end local v6    # "useImsForEmergency":Z
    .end local v7    # "useImsForUt":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 459
    .restart local v3    # "imsUseEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 469
    .restart local v5    # "isUt":Z
    .restart local v6    # "useImsForEmergency":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 472
    .restart local v7    # "useImsForUt":Z
    :cond_7
    const-string v8, "N/A"

    goto :goto_3

    :cond_8
    const-string v8, "N/A"

    goto :goto_4

    :cond_9
    const-string v8, "N/A"

    goto :goto_5

    :cond_a
    const-string v8, "N/A"

    goto :goto_6

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CDMAPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS PS call exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "imsUseEnabled ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", imsPhone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v8, "cs_fallback"

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 497
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 499
    throw v0

    .line 504
    .end local v0    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    if-eqz v8, :cond_c

    if-nez v4, :cond_c

    .line 506
    new-instance v8, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cannot dial in current state"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 508
    :cond_c
    const-string v8, "CDMAPhone"

    const-string v9, "Trying (non-IMS) CS call"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto/16 :goto_7
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "newDialString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    .line 1018
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 233
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 235
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    .line 245
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 248
    const-string v0, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1961
    const-string v0, "CDMAPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMmis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRuimPhoneBookInterfaceManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSubscriptionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEriManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsPhoneInEcmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCarrierOtaSpNumSchema="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconIndex()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriIconIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriIconMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriIconMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getCdmaEriText()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isMinInfoReady()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMinInfoReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCspPlmnEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCspPlmnEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1984
    return-void
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 383
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    .line 1013
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 1220
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1140
    const-string v0, "CDMAPhone"

    const-string v1, "explicitCallTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 282
    const-string v0, "CDMAPhone"

    const-string v1, "CDMAPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "CDMAPhone"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 287
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 996
    const-string v1, "CDMAPhone"

    const-string v2, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p1, :cond_0

    .line 998
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1000
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1001
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1003
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1134
    const-string v0, "CDMAPhone"

    const-string v1, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1113
    const-string v0, "CDMAPhone"

    const-string v1, "getCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 631
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1824
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 1825
    .local v1, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 1826
    .local v0, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1594
    const-string v0, "CDMAPhone"

    const-string v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1596
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 8

    .prologue
    const v2, 0x7fffffff

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 721
    .local v6, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 723
    .local v7, "mode":I
    if-nez v7, :cond_0

    .line 725
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 726
    .local v0, "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 730
    move-object v6, v0

    .line 732
    .end local v0    # "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    return-object v6
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 397
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 399
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 401
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 419
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 403
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 404
    goto :goto_0

    .line 407
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 408
    goto :goto_0

    .line 411
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 412
    goto :goto_0

    .line 415
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 416
    goto :goto_0

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1023
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 884
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 886
    .local v3, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v4, :cond_1

    .line 890
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 942
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataConnectionState apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 943
    return-object v3

    .line 891
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mOosIsDisconnect:Z

    if-eqz v4, :cond_2

    .line 895
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 896
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataConnectionState: Data is Out of Service. ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 899
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 901
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 905
    :pswitch_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 906
    goto :goto_0

    .line 910
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 912
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 918
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 919
    .local v2, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 921
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 922
    .local v1, "pb":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    if-eq v0, v4, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_6

    .line 924
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMAPhone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is in call"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v4, "CDMAPhone"

    const-string v5, "Data state set to SUSPENDED"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 928
    goto/16 :goto_0

    .line 914
    .end local v0    # "i":I
    .end local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneCount":I
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_1

    .line 920
    .restart local v0    # "i":I
    .restart local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .restart local v2    # "phoneCount":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 937
    .end local v0    # "i":I
    .end local v1    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneCount":I
    :pswitch_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    :cond_0
    const-string v1, "CDMAPhone"

    const-string v2, "getDeviceId(): MEID is not initialized use ESN"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 671
    const-string v0, "CDMAPhone"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v0, "0"

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 388
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 682
    const-string v0, "CDMAPhone"

    const-string v1, "GID1 is not available in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 688
    const-string v0, "CDMAPhone"

    const-string v1, "GID2 is not available in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public getICCID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2062
    const-string v1, "CDMAPhone"

    const-string v2, "getICCID() entered"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 2064
    .local v0, "r":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 589
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 593
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 694
    const-string v1, "CDMAPhone"

    const-string v2, "getImei() called for CDMAPhone"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "mImeiDevice":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.device.imei"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    .line 702
    .end local v0    # "mImeiDevice":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1145
    const-string v0, "CDMAPhone"

    const-string v1, "getLine1AlphaTag: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 4

    .prologue
    .line 600
    const-string v1, "CDMAPhone"

    const-string v2, "##@: CDMAPhone getLine1Number"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 602
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 603
    const-string v1, "CDMAPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##@: cdma get msisdn number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    .line 607
    :cond_0
    const-string v1, "CDMAPhone"

    const-string v2, "##@: cdma read number failed for r is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMLPL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2033
    const-string v1, "CDMAPhone"

    const-string v2, "getMLPL() entered"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 2035
    .local v0, "r":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMLPL()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMSPL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2026
    const-string v1, "CDMAPhone"

    const-string v2, "getMSPL() entered"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 2028
    .local v0, "r":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMSPL()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2051
    const-string v2, "CDMAPhone"

    const-string v3, "getNID() entered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const/4 v1, 0x0

    .line 2053
    .local v1, "nid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 2054
    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 2055
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v0    # "cellLocation":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2057
    :cond_0
    return-object v1
.end method

.method public getNai()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 652
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v1, "CDMAPhone"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    const-string v1, "CDMAPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccRecords is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 874
    if-eqz p1, :cond_0

    .line 875
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 877
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 878
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 880
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1128
    const-string v0, "CDMAPhone"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x2

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 344
    .local v0, "imPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 349
    :goto_0
    return-object v1

    .line 346
    :cond_0
    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    goto :goto_0

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0
.end method

.method public getSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2040
    const-string v2, "CDMAPhone"

    const-string v3, "getSID() entered"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const/4 v1, 0x0

    .line 2042
    .local v1, "sid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 2043
    .local v0, "cellLocation":Landroid/telephony/CellLocation;
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 2044
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v0    # "cellLocation":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2046
    :cond_0
    return-object v1
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v0, :cond_1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 303
    :goto_1
    return-object v0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 303
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_1
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 317
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 322
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1572
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUIMid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2069
    const-string v1, "CDMAPhone"

    const-string v2, "getUIMid() entered"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 2071
    .local v0, "r":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getUIMid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1099
    const-string v0, ""

    .line 1103
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1057
    .local v4, "sp":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vm_number_key_cdma"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1058
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1059
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    if-lez v5, :cond_2

    .line 1062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 1063
    aget-object v5, v2, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1064
    aget-object v5, v2, v1

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1066
    array-length v5, v0

    if-ne v5, v7, :cond_1

    .line 1067
    aget-object v3, v0, v8

    .line 1062
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v0, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v0, v7

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1071
    aget-object v3, v0, v8

    .line 1079
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 1088
    :cond_3
    :goto_1
    return-object v3

    .line 1085
    :cond_4
    const-string v3, "*86"

    goto :goto_1
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 531
    const-string v0, "CDMAPhone"

    const-string v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 1324
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1332
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_1

    .line 1333
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1328
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1337
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1

    .line 1473
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1339
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1341
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1342
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x23

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->startLceAfterRadioIsAvailable()V

    goto :goto_0

    .line 1348
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1350
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1354
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Baseband version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto :goto_0

    .line 1361
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1363
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1366
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 1367
    .local v3, "respId":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    .line 1368
    aget-object v4, v3, v7

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    .line 1369
    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1370
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    .line 1372
    const-string v4, "1"

    const-string v5, "persist.radio.stack_id_0"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "0"

    const-string v5, "persist.radio.stack_id_1"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1374
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after_mapping imei1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    if-nez v4, :cond_2

    .line 1376
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imei1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v4, "gsm.device.imei2"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    if-ne v4, v7, :cond_0

    .line 1379
    const-string v4, "CDMAPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imei2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const-string v4, "gsm.device.imei1"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1384
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    if-nez v4, :cond_4

    .line 1385
    const-string v4, "gsm.device.imei1"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1386
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    if-ne v4, v7, :cond_0

    .line 1387
    const-string v4, "gsm.device.imei2"

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "respId":[Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1400
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1405
    :pswitch_7
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 1408
    const-string v4, "notifyMessageWaitingChanged"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1409
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 1410
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateVoiceMail()V

    goto/16 :goto_0

    .line 1415
    :pswitch_8
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1417
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    .line 1418
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->setStateOff()V

    goto/16 :goto_0

    .line 1424
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :pswitch_9
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_RADIO_ON Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource(I)V

    .line 1428
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setPreferredNetworkTypeIfSimLoaded()V

    goto/16 :goto_0

    .line 1433
    :pswitch_a
    const-string v4, "CDMAPhone"

    const-string v5, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleCdmaSubscriptionSource(I)V

    goto/16 :goto_0

    .line 1439
    :pswitch_b
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_SSN Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1444
    :pswitch_c
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1449
    :pswitch_d
    const-string v4, "CDMAPhone"

    const-string v5, "Event EVENT_NV_READY Received"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 1452
    const-string v4, "notifyMessageWaitingChanged"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1453
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 1454
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateVoiceMail()V

    goto/16 :goto_0

    .line 1459
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1460
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-class v4, Lcom/android/internal/telephony/uicc/IccException;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1461
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1462
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1464
    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1465
    .local v2, "onComplete":Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 1466
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1467
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1337
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_e
        :pswitch_4
        :pswitch_7
        :pswitch_d
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 760
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 762
    .local v0, "mmi":Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    .line 763
    const-string v1, "CDMAPhone"

    const-string v3, "Mmi is NULL!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 772
    :goto_0
    return v1

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 768
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    .line 769
    const/4 v1, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-string v1, "CDMAPhone"

    const-string v3, "Unrecognized mmi!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 772
    goto :goto_0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    .line 1280
    packed-switch p1, :pswitch_data_0

    .line 1292
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :goto_0
    return-void

    .line 1282
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1283
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1286
    :pswitch_1
    const-string v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1288
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/16 v10, 0x1a

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 170
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 171
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1b

    invoke-static {p1, v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 173
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeDcTracker(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 174
    new-instance v5, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 175
    new-instance v5, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 176
    new-instance v5, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p1, v6}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 178
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x8

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x13

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x19

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 184
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v10, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 189
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v5, "CDMAPhone"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 193
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 196
    const-string v5, "ril.cdma.inecmmode"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "inEcm":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 198
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 207
    const-string v5, "ro.cdma.home.operator.alpha"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "operatorAlpha":Ljava/lang/String;
    const-string v5, "ro.cdma.home.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: operatorAlpha=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' operatorNumeric=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-nez v5, :cond_3

    .line 212
    const-string v5, "init: APP_FAM_3GPP == NULL"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 215
    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 217
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update icc_operator_numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 220
    iget v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 224
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 228
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 229
    return-void
.end method

.method protected initSstIcc()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 166
    return-void
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 537
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 538
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 540
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1792
    const/4 v1, 0x0

    .line 1793
    .local v1, "isOtaSpNum":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, "dialableStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1795
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 1796
    if-nez v1, :cond_0

    .line 1797
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 1800
    :cond_0
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return v1
.end method

.method public isUtEnabled()Z
    .locals 3

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2015
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isUtEnabled()Z

    move-result v1

    .line 2019
    :goto_0
    return v1

    .line 2018
    :cond_0
    const-string v1, "CDMAPhone"

    const-string v2, "isUtEnabled: called for CDMA"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1951
    const-string v0, "CDMAPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1956
    const-string v0, "CDMAPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1957
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 1183
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1298
    return-void
.end method

.method public notifyEmergencyCallRegistrants(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1272
    return-void

    .line 1271
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 1173
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1176
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1177
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1155
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1164
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1165
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1168
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 1169
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1186
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1187
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 789
    :cond_0
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1484
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1490
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_2

    .line 1491
    const-string v2, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1492
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1496
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1497
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 1498
    if-eqz v0, :cond_4

    .line 1499
    const-string v2, "Removing stale icc objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1500
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 1502
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 1504
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1505
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1507
    :cond_4
    if-eqz v1, :cond_0

    .line 1508
    const-string v2, "New Uicc application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1510
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1511
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForRuimRecordEvents()V

    .line 1512
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    goto :goto_0
.end method

.method public prepareEri()V
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-nez v0, :cond_1

    .line 1905
    const-string v0, "CDMAPhone"

    const-string v1, "PrepareEri: Trying to access stale objects"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    const-string v0, "ERI read, notify registrants"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 856
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 826
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1309
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1549
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1550
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1551
    return-void
.end method

.method protected registerForRuimRecordEvents()V
    .locals 3

    .prologue
    .line 1921
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1922
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1926
    :goto_0
    return-void

    .line 1925
    :cond_0
    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 836
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 521
    const-string v0, "CDMAPhone"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    .line 578
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    const-string v0, "removeReferences"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 270
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 271
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 272
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 273
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 274
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 277
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 278
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V
    .locals 3
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "persistSelection"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 744
    const-string v1, "CDMAPhone"

    const-string v2, "selectNetworkManually: not possible in CDMA"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz p3, :cond_0

    .line 746
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 748
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 749
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 751
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 980
    const/4 v0, 0x1

    .line 981
    .local v0, "check":Z
    const/4 v1, 0x0

    .local v1, "itr":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 982
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 983
    const-string v2, "CDMAPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v0, 0x0

    .line 989
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 990
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 992
    :cond_1
    return-void

    .line 981
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 953
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    const-string v0, "CDMAPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 1206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1209
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1210
    const-string v1, "CDMAPhone"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 948
    const-string v0, "CDMAPhone"

    const-string v1, "sendUssdResponse: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1122
    const-string v0, "CDMAPhone"

    const-string v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 810
    const-string v0, "CDMAPhone"

    const-string v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1605
    const-string v0, "CDMAPhone"

    const-string v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1607
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 1033
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 821
    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setIsInEmergencyCall()V

    .line 1197
    return-void
.end method

.method protected setIsoCountryProperty(Ljava/lang/String;)V
    .locals 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1845
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1846
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1847
    const-string v3, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1848
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 1863
    :goto_0
    return-void

    .line 1850
    :cond_0
    const-string v1, ""

    .line 1852
    .local v1, "iso":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1860
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1861
    iget v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_0

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1856
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1857
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v3, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 795
    const-string v1, "CDMAPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##@: setLine1Number in CDMA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 797
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 799
    const/4 v1, 0x1

    .line 805
    :goto_0
    return v1

    .line 802
    :cond_0
    const-string v1, "CDMAPhone"

    const-string v2, "##@: cdma set number failed for r is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 362
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 547
    const-string v1, "CDMAPhone"

    const-string v2, "method setNetworkSelectionModeAutomatic is NOT supported in CDMA!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz p1, :cond_0

    .line 549
    const-string v1, "CDMAPhone"

    const-string v2, "setNetworkSelectionModeAutomatic: not possible in CDMA- Posting exception"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 553
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 554
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 556
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 845
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 846
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 755
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 756
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1988
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 2010
    :cond_0
    :goto_0
    return v2

    .line 1992
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 1993
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 1997
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v2

    .line 2000
    .local v2, "status":Z
    if-eqz v2, :cond_0

    .line 2001
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2002
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 2003
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPhoneId:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 2006
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v3, :cond_0

    .line 2007
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto :goto_0
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1007
    const-string v0, "CDMAPhone"

    const-string v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPower(Z)V

    .line 637
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1563
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1045
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 1046
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1047
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1048
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1051
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 1946
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setVoiceMessageCount(I)V

    .line 1947
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 965
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 966
    const-string v0, "CDMAPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 976
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 584
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 861
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 831
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1314
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1555
    return-void
.end method

.method protected unregisterForRuimRecordEvents()V
    .locals 2

    .prologue
    .line 1929
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1930
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1933
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 841
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 560
    const-string v0, "CDMAPhone"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 851
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x1

    return v0
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1872
    const-string v4, "CDMAPhone: updateCurrentCarrierInProvider called"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1875
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1876
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1877
    .local v1, "map":Landroid/content/ContentValues;
    const-string v4, "numeric"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1882
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1883
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1885
    const/4 v3, 0x1

    .line 1890
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v3

    .line 1886
    :catch_0
    move-exception v0

    .line 1887
    .local v0, "e":Landroid/database/SQLException;
    const-string v4, "CDMAPhone"

    const-string v5, "Can\'t store current operator"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    .line 816
    return-void
.end method
