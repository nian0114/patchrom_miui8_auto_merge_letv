.class Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeuiAlarmManagerPlus"
.end annotation


# static fields
.field private static final DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;


# instance fields
.field private alarmS:Lcom/android/server/AlarmManagerService;

.field private whitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3630
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.deskclock"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.zdworks.android.zdclock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.dianxinos.clock"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.nextdev.alarm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.smartisan.clock"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.xone.xoneclock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tencent.qqcalendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "droom.sleepIfUCan"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.when.coco"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cn.etouch.ecalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.youloft.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.zdworks.android.zdcalendar"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "me.iweek.rili"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.microsoft.office.outlook"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.tencent.androidqqmail"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.anydo"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.woniu.groups"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.anydo.cal"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "net.icycloud.fdtodolist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/android/server/AlarmManagerService;)V
    .locals 3
    .param p1, "nativeData"    # J
    .param p3, "alarmS_"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 3664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3660
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    .line 3665
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    .line 3666
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3667
    const-string v0, "AlarmManager"

    const-string v1, "TimeAlignPolicy nativeData == 0!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :goto_0
    return-void

    .line 3678
    :cond_0
    const-string v0, "AlarmManager"

    const-string v1, "init leuiAlarmManagerPlug..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 3624
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isCtsApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final isCtsApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3690
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3698
    :cond_0
    :goto_0
    return v0

    .line 3694
    :cond_1
    const-string v1, "com.android.cts."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3695
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this is cts app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isWhitelistApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "creatorPackage"    # Ljava/lang/String;

    .prologue
    .line 3764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3765
    :cond_0
    const/4 v0, 0x0

    .line 3766
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attemptCoalesceLocked(Ljava/util/ArrayList;IJJZ)I
    .locals 5
    .param p2, "flags"    # I
    .param p3, "whenElapsed"    # J
    .param p5, "maxWhen"    # J
    .param p7, "timeAlignAlarm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;IJJZ)I"
        }
    .end annotation

    .prologue
    .local p1, "alarmBatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v3, -0x1

    .line 3836
    if-eqz p2, :cond_0

    move v2, v3

    .line 3861
    :goto_0
    return v2

    .line 3837
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3838
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3839
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3840
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v4, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v4, :cond_2

    .line 3838
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3846
    :cond_2
    if-eqz p7, :cond_3

    .line 3847
    # invokes: Lcom/android/server/AlarmManagerService$Batch;->isTimeAlign()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Batch;->access$2300(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3854
    :cond_3
    # invokes: Lcom/android/server/AlarmManagerService$Batch;->isTimeAlign()Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Batch;->access$2300(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_4
    move v2, v3

    .line 3861
    goto :goto_0
.end method

.method public getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J
    .locals 13
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "flags"    # I
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "type"    # I

    .prologue
    .line 3880
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    iget-boolean v2, v2, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mIsPowered:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide v8, p1

    .line 3882
    # invokes: Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->access$2400(JJJJ)J

    move-result-wide v10

    .line 3911
    :goto_0
    return-wide v10

    .line 3886
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2

    .line 3888
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 3894
    .local v10, "maxElapsed":J
    goto :goto_0

    .line 3898
    .end local v10    # "maxElapsed":J
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_3

    .line 3900
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    sub-long v6, p3, p1

    long-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 3901
    .restart local v10    # "maxElapsed":J
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxTriggerTime,  windowLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", triggerElapsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxElapsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nowElapsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3905
    .end local v10    # "maxElapsed":J
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 3911
    .restart local v10    # "maxElapsed":J
    goto :goto_0
.end method

.method public final isSystemService(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3710
    const/16 v8, 0x2710

    if-ge p2, v8, :cond_1

    .line 3755
    :cond_0
    :goto_0
    return v6

    .line 3714
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3716
    .local v4, "start":J
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3718
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_2

    move v6, v7

    .line 3722
    goto :goto_0

    .line 3725
    :cond_2
    const/4 v2, 0x0

    .line 3727
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3730
    .local v0, "ident":J
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3734
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3738
    if-nez v2, :cond_3

    move v6, v7

    .line 3742
    goto :goto_0

    .line 3734
    :catchall_0
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 3745
    :cond_3
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_0

    move v6, v7

    .line 3749
    goto :goto_0

    .line 3731
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public final mustTriggerExact(ILjava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "creatorPackage"    # Ljava/lang/String;

    .prologue
    .line 3778
    invoke-virtual {p0, p2, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isSystemService(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isWhitelistApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isCtsApp(Ljava/lang/String;)Z

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

.method public final removeWhitelist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3790
    :cond_0
    const/4 v0, 0x0

    .line 3791
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public useTimeAlign(JJJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z
    .locals 5
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J
    .param p5, "windowLength"    # J
    .param p7, "flags"    # I
    .param p8, "type"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 3806
    if-eqz p10, :cond_0

    const/4 v0, 0x0

    .line 3822
    :goto_0
    return v0

    .line 3808
    :cond_0
    sub-long v0, p3, p1

    const-wide/32 v2, 0x5265c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3810
    const/4 v0, 0x0

    goto :goto_0

    .line 3813
    :cond_1
    const-wide/32 v0, 0x493e0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 3815
    const/4 v0, 0x0

    goto :goto_0

    .line 3817
    :cond_2
    if-nez p7, :cond_3

    invoke-virtual {p9}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-virtual {p9}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->mustTriggerExact(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    # invokes: Lcom/android/server/AlarmManagerService;->isWakeupAlarm(I)Z
    invoke-static {p8}, Lcom/android/server/AlarmManagerService;->access$2200(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3820
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 3822
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
