.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 242
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 259
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 75
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 77
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 79
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 82
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "eventType"    # I

    .prologue
    .line 657
    packed-switch p0, :pswitch_data_0

    .line 675
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 659
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 661
    :pswitch_1
    const-string v0, "MOVE_TO_BACKGROUND"

    goto :goto_0

    .line 663
    :pswitch_2
    const-string v0, "MOVE_TO_FOREGROUND"

    goto :goto_0

    .line 665
    :pswitch_3
    const-string v0, "END_OF_DAY"

    goto :goto_0

    .line 667
    :pswitch_4
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    goto :goto_0

    .line 669
    :pswitch_5
    const-string v0, "CONFIGURATION_CHANGE"

    goto :goto_0

    .line 671
    :pswitch_6
    const-string v0, "SYSTEM_INTERACTION"

    goto :goto_0

    .line 673
    :pswitch_7
    const-string v0, "USER_INTERACTION"

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private formatDateTime(JZ)Ljava/lang/String;
    .locals 3
    .param p1, "dateTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 564
    if-eqz p3, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .locals 5
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .prologue
    .line 571
    if-eqz p3, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeDefaultsForApps(JJZ)V
    .locals 17
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J
    .param p5, "firstUpdate"    # Z

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 153
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v8

    .line 154
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 155
    .local v6, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 156
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 157
    .local v9, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 158
    .local v7, "packageName":Ljava/lang/String;
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_1

    if-nez p5, :cond_0

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v2, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v11, v2, v4

    .line 161
    .local v11, "stats":Lcom/android/server/usage/IntervalStats;
    const/4 v12, 0x6

    move-wide/from16 v0, p1

    invoke-virtual {v11, v7, v0, v1, v12}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)J

    .line 162
    move-wide/from16 v0, p3

    invoke-virtual {v11, v7, v0, v1}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    .line 163
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    .end local v2    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v11    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 169
    return-void
.end method

.method private static intervalToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "interval"    # I

    .prologue
    .line 642
    packed-switch p0, :pswitch_data_0

    .line 652
    const-string v0, "?"

    :goto_0
    return-object v0

    .line 644
    :pswitch_0
    const-string v0, "daily"

    goto :goto_0

    .line 646
    :pswitch_1
    const-string v0, "weekly"

    goto :goto_0

    .line 648
    :pswitch_2
    const-string v0, "monthly"

    goto :goto_0

    .line 650
    :pswitch_3
    const-string v0, "yearly"

    goto :goto_0

    .line 642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private loadActiveStats(JZZ)V
    .locals 13
    .param p1, "currentTimeMillis"    # J
    .param p3, "force"    # Z
    .param p4, "resetBeginIdleTime"    # Z

    .prologue
    .line 488
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 489
    .local v4, "tempCal":Lcom/android/server/usage/UnixCalendar;
    const/4 v1, 0x0

    .local v1, "intervalType":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 490
    invoke-virtual {v4, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 491
    invoke-static {v4, v1}, Lcom/android/server/usage/UnixCalendar;->truncateTo(Lcom/android/server/usage/UnixCalendar;I)V

    .line 493
    if-nez p3, :cond_1

    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 489
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_1
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v6, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStatsBeginTime(I)J

    move-result-wide v2

    .line 501
    .local v2, "lastBeginTime":J
    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    .line 507
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v7, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v7, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    aput-object v7, v6, v1

    .line 512
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    if-nez v6, :cond_2

    .line 519
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v7, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v7}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v7, v6, v1

    .line 520
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 521
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iput-wide p1, v6, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 524
    :cond_2
    if-eqz p4, :cond_0

    .line 525
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 526
    .local v5, "usageStats":Landroid/app/usage/UsageStats;
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    goto :goto_2

    .line 509
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_3
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    goto :goto_1

    .line 530
    .end local v2    # "lastBeginTime":J
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 531
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 532
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 533
    iget-object v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v6}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 534
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Rollover scheduled @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method private notifyStatsChanged()V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 479
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 481
    :cond_0
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .locals 12
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    const/4 v10, 0x0

    .line 283
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p4

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    .line 285
    if-gez p1, :cond_0

    .line 288
    const/4 p1, 0x0

    .line 292
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-lt p1, v2, :cond_2

    .line 344
    :cond_1
    :goto_0
    return-object v10

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v9, v2, p1

    .line 306
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 318
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-wide/from16 v0, p4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 321
    .local v6, "truncatedEndTime":J
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v3, p1

    move-wide v4, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v10

    .line 330
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, p4, v2

    if-lez v2, :cond_1

    .line 335
    if-nez v10, :cond_3

    .line 336
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_0
.end method

.method private rolloverStats(J)V
    .locals 29
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 432
    .local v18, "startTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 438
    .local v17, "previousConfig":Landroid/content/res/Configuration;
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 439
    .local v10, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v6, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_3

    aget-object v20, v6, v12

    .line 440
    .local v20, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 441
    .local v15, "pkgCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_2

    .line 442
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 443
    .local v16, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    move/from16 v21, v0

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 445
    :cond_0
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    const/16 v26, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)J

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 441
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 452
    .end local v16    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 439
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 455
    .end local v11    # "i":I
    .end local v15    # "pkgCount":I
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 457
    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, v21

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    .line 459
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 460
    .local v7, "continueCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v7, :cond_5

    .line 461
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 462
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    aget-object v21, v21, v24

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 463
    .local v8, "beginTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v13, v6

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v13, :cond_4

    aget-object v20, v6, v12

    .line 464
    .restart local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v14, v8, v9, v1}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)J

    .line 465
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 463
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 460
    .end local v20    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 469
    .end local v8    # "beginTime":J
    .end local v14    # "name":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v22, v24, v18

    .line 472
    .local v22, "totalTime":J
    const-string v21, "UsageStatsService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Rolling over usage stats complete. Took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " milliseconds"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method


# virtual methods
.method checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 2
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 551
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "screenOnTime"    # J

    .prologue
    .line 555
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 556
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 557
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 558
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method

.method getBeginIdleTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 399
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    .line 400
    const-wide/16 v2, -0x1

    .line 402
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getBeginIdleTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method getSystemLastUsedTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    .line 409
    .local v1, "yearly":Lcom/android/server/usage/IntervalStats;
    iget-object v2, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .local v0, "packageUsage":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    .line 410
    const-wide/16 v2, -0x1

    .line 412
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimeSystemUsed()J

    move-result-wide v2

    goto :goto_0
.end method

.method init(JJ)V
    .locals 19
    .param p1, "currentTimeMillis"    # J
    .param p3, "deviceUsageTime"    # J

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 87
    const/4 v14, 0x0

    .line 88
    .local v14, "nullCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v5, v5

    if-ge v11, v5, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v6, v11}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v6

    aput-object v6, v5, v11

    .line 90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v5, v5, v11

    if-nez v5, :cond_0

    .line 93
    add-int/lit8 v14, v14, 0x1

    .line 88
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 97
    :cond_1
    if-lez v14, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v5, v5

    if-eq v14, v5, :cond_2

    .line 101
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Some stats have no latest available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    .line 123
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v4, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_7

    aget-object v17, v4, v12

    .line 124
    .local v17, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 125
    .local v15, "pkgCount":I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_6

    .line 126
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/UsageStats;

    .line 127
    .local v16, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v16

    iget v5, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    move-object/from16 v0, v16

    iget v5, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 129
    :cond_3
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/4 v8, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)J

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 125
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 113
    .end local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v5}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 117
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Rollover scheduled @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v7}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 135
    .restart local v4    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "pkgCount":I
    .restart local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 138
    .end local v15    # "pkgCount":I
    .end local v17    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5}, Lcom/android/server/usage/UsageStatsDatabase;->isFirstUpdate()Z

    move-result v10

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->initializeDefaultsForApps(JJZ)V

    .line 142
    :cond_8
    return-void
.end method

.method onTimeChanged(JJZ)V
    .locals 5
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J
    .param p5, "resetBeginIdleTime"    # Z

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 173
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0, p5}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(JZZ)V

    .line 175
    return-void
.end method

.method persistActiveStats()V
    .locals 5

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v2, :cond_1

    .line 418
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Flushing usage stats to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 424
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failed to persist active stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V
    .locals 21
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "screenOnTime"    # J
    .param p5, "prettyDates"    # Z

    .prologue
    .line 579
    if-eqz p5, :cond_0

    .line 580
    const-string v18, "timeRange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v8, 0x20015

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 588
    const-string v3, "packages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 590
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    .line 591
    .local v16, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 592
    .local v15, "pkgCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v15, :cond_1

    .line 593
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 594
    .local v17, "usageStats":Landroid/app/usage/UsageStats;
    const-string v3, "package"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    const-string v3, "totalTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    const-string v3, "lastTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    const-string v3, "lastTimeSystem"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const-string v3, "inactiveTime"

    move-object/from16 v0, v17

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    sub-long v4, p3, v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 592
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 583
    .end local v14    # "i":I
    .end local v15    # "pkgCount":I
    .end local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v17    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_0
    const-string v3, "beginTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    const-string v3, "endTime"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 604
    .restart local v14    # "i":I
    .restart local v15    # "pkgCount":I
    .restart local v16    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 606
    const-string v3, "configurations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 608
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 609
    .local v10, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 610
    .local v9, "configCount":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_2

    .line 611
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/ConfigurationStats;

    .line 612
    .local v2, "config":Landroid/app/usage/ConfigurationStats;
    const-string v3, "config"

    iget-object v4, v2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const-string v3, "totalTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    const-string v3, "lastTime"

    iget-wide v4, v2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const-string v3, "count"

    iget v4, v2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 610
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 618
    .end local v2    # "config":Landroid/app/usage/ConfigurationStats;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 620
    const-string v3, "events"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 622
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 623
    .local v13, "events":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v12

    .line 624
    .local v12, "eventCount":I
    :goto_3
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_6

    .line 625
    invoke-virtual {v13, v14}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    .line 626
    .local v11, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "time"

    iget-wide v4, v11, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    const-string v3, "type"

    iget v4, v11, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v4}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 628
    const-string v3, "package"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 630
    const-string v3, "class"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    :cond_3
    iget-object v3, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_4

    .line 633
    const-string v3, "config"

    iget-object v4, v11, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v4}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 624
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 623
    .end local v11    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v12    # "eventCount":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 637
    .restart local v12    # "eventCount":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 639
    return-void
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .locals 17
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 356
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 357
    .local v6, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V

    move-object/from16 v8, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v7

    .line 387
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    .line 391
    :cond_1
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 392
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 393
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0, v7, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .locals 8
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;J)V
    .locals 16
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "deviceUsageTime"    # J

    .prologue
    .line 184
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v6}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 186
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    .line 191
    .local v9, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 192
    .local v13, "newFullConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, v9, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, v9, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v13}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 200
    :cond_1
    iget-object v2, v9, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v2, :cond_2

    .line 201
    new-instance v2, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v2}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v2, v9, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 203
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    .line 204
    iget-object v2, v9, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p1

    invoke-virtual {v2, v6, v7, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 207
    :cond_3
    const/4 v10, 0x0

    .line 208
    .local v10, "hasReported":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v8, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_6

    aget-object v14, v8, v11

    .line 209
    .local v14, "stats":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 210
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v14, v13, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 208
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 212
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v14, v2, v6, v7, v3}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 213
    .local v4, "lastUsedTime":J
    if-nez v10, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_5

    .line 214
    const/4 v10, 0x1

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onReportDetail(Ljava/lang/String;JJ)V

    .line 217
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-virtual {v14, v2, v0, v1}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    goto :goto_1

    .line 221
    .end local v4    # "lastUsedTime":J
    .end local v14    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 222
    return-void
.end method

.method setBeginIdleTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "beginIdleTime"    # J

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 230
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateBeginIdleTime(Ljava/lang/String;J)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 233
    return-void
.end method

.method setSystemLastUsedTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v0, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 237
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/IntervalStats;->updateSystemLastUsedTime(Ljava/lang/String;J)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 240
    return-void
.end method
