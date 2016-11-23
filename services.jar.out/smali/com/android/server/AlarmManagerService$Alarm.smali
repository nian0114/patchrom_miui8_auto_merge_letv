.class Lcom/android/server/AlarmManagerService$Alarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Alarm"
.end annotation


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public delayTime:J

.field public final flags:I

.field public leuiTimeAlign:Z

.field public maxWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public pid:I

.field public priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

.field public repeatInterval:J

.field public final tag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public when:J

.field public whenElapsed:J

.field public windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZJ)V
    .locals 4
    .param p1, "_type"    # I
    .param p2, "_when"    # J
    .param p4, "_whenElapsed"    # J
    .param p6, "_windowLength"    # J
    .param p8, "_maxWhen"    # J
    .param p10, "_interval"    # J
    .param p12, "_op"    # Landroid/app/PendingIntent;
    .param p13, "_ws"    # Landroid/os/WorkSource;
    .param p14, "_flags"    # I
    .param p15, "_info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "_uid"    # I
    .param p17, "_leuiTimeAlign"    # Z
    .param p18, "_delayTime"    # J

    .prologue
    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2481
    iput p1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 2482
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    .line 2483
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    .line 2488
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_2

    .end local p18    # "_delayTime":J
    :goto_1
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->delayTime:J

    .line 2489
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->delayTime:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2490
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->delayTime:J

    add-long/2addr v2, p4

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2491
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->delayTime:J

    add-long/2addr v2, p8

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2493
    iput-wide p6, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2494
    iput-wide p10, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 2495
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 2496
    move-object/from16 v0, p12

    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2497
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 2498
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 2499
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2500
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    .line 2502
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    .line 2504
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    .line 2505
    return-void

    .line 2483
    .restart local p18    # "_delayTime":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2488
    :cond_2
    const-wide/16 p18, 0x0

    goto :goto_1
.end method

.method public static makeTag(Landroid/app/PendingIntent;I)Ljava/lang/String;
    .locals 1
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "type"    # I

    .prologue
    .line 2508
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "*walarm*:"

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "*alarm*:"

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    const/4 v0, 0x1

    .line 2529
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2531
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "tag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "delay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->delayTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2534
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "type="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2535
    const-string v1, " whenElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2537
    if-eqz v0, :cond_3

    .line 2538
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2542
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2543
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2544
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2545
    const-string v1, " count="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2546
    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2547
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_1

    .line 2548
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2553
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "operation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2554
    return-void

    .line 2529
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2540
    .restart local v0    # "isRtc":Z
    :cond_3
    const-string v1, " when="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v2, v3, p5, p6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2514
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2515
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    iget v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2519
    const-string v1, " when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2521
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2522
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
