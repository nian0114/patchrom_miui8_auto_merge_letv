.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlarmManager$AlarmClockInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEXT_ALARM_CLOCK_CHANGED:Ljava/lang/String; = "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final FLAG_ALLOW_WHILE_IDLE:I = 0x4

.field public static final FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED:I = 0x8

.field public static final FLAG_IDLE_UNTIL:I = 0x10

.field public static final FLAG_STANDALONE:I = 0x1

.field public static final FLAG_WAKE_FROM_IDLE:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_POWEROFF_WAKEUP:I = 0x4

.field public static final RTC_WAKEUP:I = 0x0

.field public static final WINDOW_EXACT:J = 0x0L

.field public static final WINDOW_HEURISTIC:J = -0x1L


# instance fields
.field private final mAlwaysExact:Z

.field private final mService:Landroid/app/IAlarmManager;

.field private final mTargetSdkVersion:I


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Landroid/app/IAlarmManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    .line 183
    iget v0, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    .line 184
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private legacyExactLength()J
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/app/AlarmManager;->mAlwaysExact:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 490
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 498
    const-wide/16 p2, 0x0

    .line 502
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Landroid/app/IAlarmManager;->set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 722
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelLeuiPowerOffAlarm(ZLandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p1, "alarm"    # Z
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 437
    return-void
.end method

.method public getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 816
    :goto_0
    return-object v1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 4

    .prologue
    .line 782
    :try_start_0
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1}, Landroid/app/IAlarmManager;->getNextWakeFromIdleTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 784
    :goto_0
    return-wide v2

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "ex":Landroid/os/RemoteException;
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "windowMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 484
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 486
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 262
    return-void
.end method

.method public setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 477
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v6, v4

    move v8, v1

    move-object v9, p2

    move-object v11, p1

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 478
    return-void
.end method

.method public setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 652
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 654
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 411
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 412
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 706
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 708
    return-void
.end method

.method public setIdleUntil(IJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 449
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 450
    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 603
    const-wide/16 v4, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 604
    return-void
.end method

.method public setLeuiPowerOffAlarm(ZJLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "alarm"    # Z
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 424
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 425
    return-void
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/app/AlarmManager;->legacyExactLength()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 324
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 761
    :cond_0
    iget v1, p0, Landroid/app/AlarmManager;->mTargetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "hasTimeZone":Z
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v1

    invoke-virtual {v1, p1}, Llibcore/util/ZoneInfoDB$TzData;->hasTimeZone(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 768
    :goto_1
    if-nez v0, :cond_1

    .line 769
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an Olson ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 774
    .end local v0    # "hasTimeZone":Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v1, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v1

    goto :goto_0

    .line 765
    .restart local v0    # "hasTimeZone":Z
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setWindow(IJJLandroid/app/PendingIntent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "windowStartMillis"    # J
    .param p4, "windowLengthMillis"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 373
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/app/AlarmManager;->setImpl(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 374
    return-void
.end method
