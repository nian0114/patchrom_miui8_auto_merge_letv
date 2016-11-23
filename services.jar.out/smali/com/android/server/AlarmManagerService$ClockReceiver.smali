.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field mLastTimeTickTime:J

.field mTimeTickCount:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2957
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2954
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    .line 2955
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mLastTimeTickTime:J

    .line 2958
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2959
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2960
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2961
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2962
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2966
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2967
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_0

    .line 2968
    const-string v2, "AlarmManager"

    const-string v3, "Received TIME_TICK alarm; rescheduling"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2981
    :cond_1
    :goto_0
    return-void

    .line 2971
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2976
    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2977
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 2978
    .local v0, "gmtOffset":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v3, 0xea60

    div-int v3, v0, v3

    neg-int v3, v3

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;JI)I

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3027
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 3028
    .local v13, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3029
    const/16 v0, 0xa

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3030
    const/16 v0, 0xc

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3031
    const/16 v0, 0xd

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3032
    const/16 v0, 0xe

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3033
    const/4 v0, 0x5

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3035
    const/4 v10, 0x0

    .line 3036
    .local v10, "workSource":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    move-wide v6, v4

    move v9, v1

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3038
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 22

    .prologue
    .line 2984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2985
    .local v16, "currentTime":J
    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0xea60

    div-long v4, v16, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long v18, v2, v4

    .line 2989
    .local v18, "nextTime":J
    sub-long v20, v18, v16

    .line 3010
    .local v20, "tickEventDelay":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    .line 3013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v16

    # invokes: Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z
    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;J)Z

    move-result v15

    .line 3014
    .local v15, "nowIsLight":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mIsLight:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eq v15, v2, :cond_0

    .line 3015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mIsLight:Z
    invoke-static {v2, v15}, Lcom/android/server/AlarmManagerService;->access$1302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->onTwilightChange()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)V

    .line 3020
    :cond_0
    const/4 v12, 0x0

    .line 3021
    .local v12, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v4, v4, v20

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3024
    return-void
.end method
