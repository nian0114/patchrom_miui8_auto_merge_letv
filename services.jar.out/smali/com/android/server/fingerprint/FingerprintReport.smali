.class public Lcom/android/server/fingerprint/FingerprintReport;
.super Ljava/lang/Object;
.source "FingerprintReport.java"


# static fields
.field private static final ACTION_DIALY_REPORT_ALARM:Ljava/lang/String; = "com.android.fp.alarm.report"

.field private static final AGNES_APP_NAME:Ljava/lang/String; = "Fingerprint"

.field private static final AGNES_EVENT_FAILED:Ljava/lang/String; = "fail_num"

.field private static final AGNES_EVENT_SUC:Ljava/lang/String; = "succ_num"

.field private static final TAG:Ljava/lang/String; = "FingerprintReport"

.field private static mInstance:Lcom/android/server/fingerprint/FingerprintReport;


# instance fields
.field private agnesApp:Lcom/letv/tracker/agnes/App;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDailyReportReceiver:Landroid/content/BroadcastReceiver;

.field mMsgArray:[Ljava/lang/String;

.field private mUnclockFailed:I

.field private mUnclockSuccess:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    .line 31
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    .line 34
    new-instance v0, Lcom/android/server/fingerprint/FingerprintReport$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintReport$1;-><init>(Lcom/android/server/fingerprint/FingerprintReport;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mDailyReportReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    new-instance v0, Lcom/android/server/fingerprint/FingerprintReport$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintReport$2;-><init>(Lcom/android/server/fingerprint/FingerprintReport;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport;->mBootReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport;->mDailyReportReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.fp.alarm.report"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintReport;->initAgnes()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintReport;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintReport;->reportDailyAuthResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintReport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintReport;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintReport;->startAlarmForReport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintReport;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintReport;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calculateNextReportTime()J
    .locals 8

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "cal":Ljava/util/Calendar;
    const-string v1, "FingerprintReport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 113
    .local v4, "now":J
    const/16 v1, 0xb

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->add(II)V

    .line 114
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 115
    .local v2, "next":J
    const-string v1, "FingerprintReport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get next time in millis : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cal : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-wide v2
.end method

.method private getAcquiredString(I)Z
    .locals 5
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 131
    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_0

    .line 132
    add-int/lit16 v0, p1, -0x3e8

    .line 133
    .local v0, "msgNumber":I
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintReport;->mMsgArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 134
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintReport;->mMsgArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    .end local v0    # "msgNumber":I
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 129
    goto :goto_0

    .restart local v0    # "msgNumber":I
    :cond_1
    move v1, v2

    .line 137
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/fingerprint/FingerprintReport;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/fingerprint/FingerprintReport;->mInstance:Lcom/android/server/fingerprint/FingerprintReport;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/server/fingerprint/FingerprintReport;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintReport;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintReport;->mInstance:Lcom/android/server/fingerprint/FingerprintReport;

    .line 95
    :cond_0
    sget-object v0, Lcom/android/server/fingerprint/FingerprintReport;->mInstance:Lcom/android/server/fingerprint/FingerprintReport;

    return-object v0
.end method

.method private initAgnes()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    .line 61
    .local v0, "agnes":Lcom/letv/tracker/agnes/Agnes;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 62
    const-string v1, "Fingerprint"

    invoke-static {v1}, Lcom/letv/tracker/enums/LeUIApp;->isExsited(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "Fingerprint"

    invoke-static {v1}, Lcom/letv/tracker/enums/LeUIApp;->valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/LeUIApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->getApp(Lcom/letv/tracker/enums/LeUIApp;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport;->agnesApp:Lcom/letv/tracker/agnes/App;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v1, "Fingerprint"

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport;->agnesApp:Lcom/letv/tracker/agnes/App;

    goto :goto_0
.end method

.method private reportDailyAuthResult()V
    .locals 5

    .prologue
    .line 70
    const-string v2, "FingerprintReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "report : success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v2, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintReport;->agnesApp:Lcom/letv/tracker/agnes/App;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v1

    .line 75
    .local v1, "w1":Lcom/letv/tracker/agnes/Widget;
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Unlock:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    .line 76
    .local v0, "event":Lcom/letv/tracker/agnes/Event;
    const-string v2, "succ_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/letv/tracker/agnes/Event;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "fail_num"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/letv/tracker/agnes/Event;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    .line 79
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintReport;->resetDailyReportValue()V

    goto :goto_0
.end method

.method private resetDailyReportValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    .line 155
    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    .line 156
    return-void
.end method

.method private startAlarmForReport()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 100
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 101
    const-string v2, "FingerprintReport"

    const-string v3, "set alarm for report"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fp.alarm.report"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 105
    .local v1, "operation":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintReport;->calculateNextReportTime()J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 107
    .end local v1    # "operation":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkIsFailedAcquireInfo(I)V
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintReport;->getAcquiredString(I)Z

    move-result v0

    .line 160
    .local v0, "isFailed":Z
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintReport;->unlockFailed()V

    .line 163
    :cond_0
    return-void
.end method

.method public unlockFailed()V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockFailed:I

    .line 147
    return-void
.end method

.method public unlockSuccess()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintReport;->mUnclockSuccess:I

    .line 151
    return-void
.end method
