.class Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public events:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public lastTimeSaved:J

.field private final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "index":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_0
.end method

.method private isStatefulEvent(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    if-nez v0, :cond_0

    new-instance v0, Landroid/app/usage/ConfigurationStats;

    .end local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .restart local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    new-instance v0, Landroid/app/usage/UsageStats;

    .end local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .restart local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method update(Ljava/lang/String;JI)J
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    .prologue
    const/4 v8, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    .local v2, "usageStats":Landroid/app/usage/UsageStats;
    const-wide/16 v0, -0x1

    .local v0, "lastTimeUsed":J
    const/4 v3, 0x2

    if-eq p4, v3, :cond_0

    const/4 v3, 0x3

    if-ne p4, v3, :cond_2

    :cond_0
    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    if-eq v3, v8, :cond_1

    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_1
    iget-wide v4, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v0, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_2
    invoke-direct {p0, p4}, Lcom/android/server/usage/IntervalStats;->isStatefulEvent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput p4, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    :cond_3
    const/4 v3, 0x6

    if-eq p4, v3, :cond_4

    iput-wide p2, v2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_4
    iput-wide p2, v2, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    iput-wide p2, v2, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    if-ne p4, v8, :cond_5

    iget v3, v2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    :cond_5
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    return-wide v0
.end method

.method updateBeginIdleTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "timeStamp"    # J

    .prologue
    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .local v0, "activeStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .end local v0    # "activeStats":Landroid/app/usage/ConfigurationStats;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iput-wide p2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .end local v1    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_1
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    return-void
.end method

.method updateSystemLastUsedTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    return-void
.end method
