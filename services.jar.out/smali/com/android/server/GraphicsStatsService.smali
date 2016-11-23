.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$HistoricalData;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    }
.end annotation


# static fields
.field private static final ACTION_REPORT_AGNES:Ljava/lang/String; = "com.letv.android.action.REPORT_AGNES"

.field private static final ASHMEM_SIZE:I = 0x100

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final HISTORY_SIZE:I = 0x14

.field static JANK_TYPE_NAMES:[Ljava/lang/String; = null

.field private static final MILLIS_PER_HOUR:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"

.field private static final kBucket2msIntervals:I = 0x20

.field private static final kBucket4msIntervals:I = 0x30

.field private static final kBucketMinThreshold:I = 0x7


# instance fields
.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mAgnesApp:Lcom/letv/tracker/agnes/App;

.field private mAppName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

.field private final mLock:Ljava/lang/Object;

.field private mNextHistoricalSlot:I

.field private mTempBuffer:[B

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "u"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/GraphicsStatsService;->JANK_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 88
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/server/GraphicsStatsService$HistoricalData;

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    .line 90
    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    .line 288
    const-string v1, "SystemReport"

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAppName:Ljava/lang/String;

    .line 300
    new-instance v1, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.letv.android.action.REPORT_AGNES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/GraphicsStatsService;->removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;
    .param p1, "x1"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/GraphicsStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->reportJankyFrames()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/GraphicsStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/GraphicsStatsService;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->setReportTime()V

    return-void
.end method

.method private byte2Int([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "l":I
    const/4 v1, 0x0

    aget-byte v0, p1, v1

    .line 521
    and-int/lit16 v0, v0, 0xff

    .line 522
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 523
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 524
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 525
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 526
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 527
    and-int/lit8 v0, v0, -0x1

    .line 528
    return v0
.end method

.method private byteToLong([B)J
    .locals 8
    .param p1, "b"    # [B

    .prologue
    const-wide/16 v6, 0xff

    .line 532
    const-wide/16 v0, 0x0

    .line 533
    .local v0, "l":J
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 534
    const/4 v2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 535
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 536
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 537
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 538
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 539
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 540
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 541
    return-wide v0
.end method

.method private fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 167
    .local v8, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 169
    .local v0, "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    if-ne v1, p2, :cond_0

    .line 178
    :goto_1
    return-object v0

    .line 167
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/os/IBinder;IILjava/lang/String;)V

    .line 177
    .restart local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v0    # "buffers":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    :catch_0
    move-exception v6

    .line 180
    .local v6, "ex":Ljava/io/IOException;
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to allocate space"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findPercentile(ILjava/util/ArrayList;I)I
    .locals 4
    .param p1, "totalFrameCount"    # I
    .param p3, "percentile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 494
    .local p2, "frameCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    mul-int v3, p3, p1

    div-int/lit8 v1, v3, 0x64

    .line 495
    .local v1, "pos":I
    sub-int v2, p1, v1

    .line 496
    .local v2, "remaining":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 497
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    .line 498
    if-gtz v2, :cond_0

    .line 499
    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->frameTimeForFrameCountIndex(I)I

    move-result v3

    .line 502
    :goto_1
    return v3

    .line 496
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 502
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private frameTimeForFrameCountIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 506
    add-int/lit8 p1, p1, 0x7

    .line 507
    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    .line 508
    add-int/lit8 v0, p1, -0x20

    add-int/2addr p1, v0

    .line 510
    :cond_0
    const/16 v0, 0x30

    if-le p1, v0, :cond_1

    .line 513
    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    .line 515
    :cond_1
    return p1
.end method

.method private getFrameCounts([B)Ljava/util/ArrayList;
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "frameCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x4

    new-array v2, v4, [B

    .line 446
    .local v2, "framesItem":[B
    const/4 v0, 0x0

    .line 447
    .local v0, "count":I
    const/16 v3, 0x14

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x11

    if-gt v3, v4, :cond_1

    .line 448
    aget-byte v4, p1, v3

    aput-byte v4, v2, v0

    .line 449
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0, v2}, Lcom/android/server/GraphicsStatsService;->byte2Int([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 456
    :cond_1
    return-object v1
.end method

.method private getJankFrameCount([B)I
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    .line 471
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 472
    .local v0, "jankFramesCount":[B
    const/4 v1, 0x0

    const/16 v2, 0xf4

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 473
    const/4 v1, 0x1

    const/16 v2, 0xf5

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 474
    const/4 v1, 0x2

    const/16 v2, 0xf6

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 475
    const/4 v1, 0x3

    const/16 v2, 0xf7

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 476
    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->byte2Int([B)I

    move-result v1

    return v1
.end method

.method private getJankTypeCounts([B)Ljava/util/ArrayList;
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v2, "jankTypeCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x4

    new-array v3, v4, [B

    .line 429
    .local v3, "jankTypeItem":[B
    const/4 v0, 0x0

    .line 430
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    add-int/lit16 v4, v4, -0xed

    if-gt v1, v4, :cond_1

    .line 431
    aget-byte v4, p1, v1

    aput-byte v4, v3, v0

    .line 432
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->byte2Int([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :cond_1
    return-object v2
.end method

.method private getNextReportTime(J)J
    .locals 9
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 363
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 364
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 365
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 366
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 367
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 368
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 369
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 370
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p1, p2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    rem-long/2addr v4, v6

    add-long/2addr v2, v4

    return-wide v2
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "file"    # Landroid/os/MemoryFile;

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get PFD from memory file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getStatStartTime([B)J
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 481
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 482
    .local v0, "framestime":[B
    const/4 v1, 0x0

    const/16 v2, 0xf8

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 483
    const/4 v1, 0x1

    const/16 v2, 0xf9

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 484
    const/4 v1, 0x2

    const/16 v2, 0xfa

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 485
    const/4 v1, 0x3

    const/16 v2, 0xfb

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 486
    const/4 v1, 0x4

    const/16 v2, 0xfc

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 487
    const/4 v1, 0x5

    const/16 v2, 0xfd

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 488
    const/4 v1, 0x6

    const/16 v2, 0xfe

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 489
    const/4 v1, 0x7

    const/16 v2, 0xff

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 490
    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->byteToLong([B)J

    move-result-wide v2

    return-wide v2
.end method

.method private getTotalFrameCount([B)I
    .locals 3
    .param p1, "buffer"    # [B

    .prologue
    .line 461
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 462
    .local v0, "framesCount":[B
    const/4 v1, 0x0

    const/16 v2, 0xf0

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 463
    const/4 v1, 0x1

    const/16 v2, 0xf1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 464
    const/4 v1, 0x2

    const/16 v2, 0xf2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 465
    const/4 v1, 0x3

    const/16 v2, 0xf3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 466
    invoke-direct {p0, v0}, Lcom/android/server/GraphicsStatsService;->byte2Int([B)I

    move-result v1

    return v1
.end method

.method private isValid(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 104
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    .line 107
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "GraphicsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 150
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    iput-object v5, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPreviousData:Lcom/android/server/GraphicsStatsService$HistoricalData;

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aget-object v0, v1, v2

    .line 153
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalData;

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    invoke-direct {v0, v5}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>(Lcom/android/server/GraphicsStatsService$1;)V

    .line 157
    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_0
    iget-object v1, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/GraphicsStatsService$HistoricalData;->update(Ljava/lang/String;ILandroid/os/MemoryFile;)V

    .line 158
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 160
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v2, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aput-object v0, v1, v2

    .line 161
    iget v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    .line 162
    return-void

    .line 148
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeHistoricalDataLocked(ILjava/lang/String;)Lcom/android/server/GraphicsStatsService$HistoricalData;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 186
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aget-object v0, v3, v1

    .line 187
    .local v0, "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    if-ne v3, p1, :cond_1

    iget-object v3, v0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    iget v3, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    if-ne v1, v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    aput-object v2, v3, v1

    .line 198
    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :goto_1
    return-object v0

    .line 192
    .restart local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v5, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    .line 193
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    iget v4, p0, Lcom/android/server/GraphicsStatsService;->mNextHistoricalSlot:I

    aput-object v2, v3, v4

    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "data":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    move-object v0, v2

    .line 198
    goto :goto_1
.end method

.method private reportJankyFrames()V
    .locals 15

    .prologue
    .line 375
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v8, "reportData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 377
    .local v7, "reportBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 378
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 379
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 380
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v10, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v11, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x100

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 381
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v10}, Lcom/android/server/GraphicsStatsService;->getTotalFrameCount([B)I

    move-result v10

    const/16 v11, 0x258

    if-lt v10, v11, :cond_3

    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 383
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v10}, Lcom/android/server/GraphicsStatsService;->getTotalFrameCount([B)I

    move-result v9

    .line 384
    .local v9, "totalFrameCount":I
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v10}, Lcom/android/server/GraphicsStatsService;->getJankFrameCount([B)I

    move-result v5

    .line 387
    .local v5, "jankFrameCount":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jf"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "90"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v11}, Lcom/android/server/GraphicsStatsService;->getFrameCounts([B)Ljava/util/ArrayList;

    move-result-object v11

    const/16 v12, 0x5a

    invoke-direct {p0, v9, v11, v12}, Lcom/android/server/GraphicsStatsService;->findPercentile(ILjava/util/ArrayList;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "95"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v11}, Lcom/android/server/GraphicsStatsService;->getFrameCounts([B)Ljava/util/ArrayList;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-direct {p0, v9, v11, v12}, Lcom/android/server/GraphicsStatsService;->findPercentile(ILjava/util/ArrayList;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "99"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v11}, Lcom/android/server/GraphicsStatsService;->getFrameCounts([B)Ljava/util/ArrayList;

    move-result-object v11

    const/16 v12, 0x63

    invoke-direct {p0, v9, v11, v12}, Lcom/android/server/GraphicsStatsService;->findPercentile(ILjava/util/ArrayList;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    iget-object v10, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-direct {p0, v10}, Lcom/android/server/GraphicsStatsService;->getJankTypeCounts([B)Ljava/util/ArrayList;

    move-result-object v6

    .line 394
    .local v6, "jankTypeCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget-object v10, Lcom/android/server/GraphicsStatsService;->JANK_TYPE_NAMES:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/GraphicsStatsService;->JANK_TYPE_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 399
    :cond_0
    const-string v10, "GraphicsStatsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportBuffer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v10, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 404
    const/16 v10, 0x1e

    if-lt v1, v10, :cond_3

    .line 415
    .end local v0    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v4    # "j":I
    .end local v5    # "jankFrameCount":I
    .end local v6    # "jankTypeCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "totalFrameCount":I
    :cond_1
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 416
    invoke-virtual {p0, v8}, Lcom/android/server/GraphicsStatsService;->report(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "reportBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "reportData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    return-void

    .line 378
    .restart local v0    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v7    # "reportBuffer":Ljava/lang/StringBuffer;
    .restart local v8    # "reportData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 418
    .end local v0    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v7    # "reportBuffer":Ljava/lang/StringBuffer;
    .end local v8    # "reportData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 419
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 420
    const-string v10, "GraphicsStatsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reportJankyFrames error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/os/IBinder;IILjava/lang/String;)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object v0

    .line 141
    .local v0, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, v1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private setReportTime()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 349
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v4, "com.letv.android.action.REPORT_AGNES"

    const/4 v5, 0x0

    invoke-direct {v7, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .local v7, "it":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 351
    .local v6, "alarmPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 353
    .local v8, "currentTimeMillis":J
    invoke-direct {p0, v8, v9}, Lcom/android/server/GraphicsStatsService;->getNextReportTime(J)J

    move-result-wide v2

    .line 354
    .local v2, "nextReportTime":J
    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 359
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 203
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "GraphicsStatsService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v7, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 205
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 206
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 207
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    iget-object v8, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 213
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mTempBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Failed to dump"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 219
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mHistoricalLog:[Lcom/android/server/GraphicsStatsService$HistoricalData;

    .local v0, "arr$":[Lcom/android/server/GraphicsStatsService$HistoricalData;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 220
    .local v1, "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    if-nez v1, :cond_1

    .line 219
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 221
    :cond_1
    const-string v6, "Package: "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 224
    iget-object v6, v1, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    invoke-static {v6, p1}, Landroid/view/ThreadedRenderer;->dumpProfileData([BLjava/io/FileDescriptor;)V

    .line 225
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_3

    .line 227
    .end local v1    # "buffer":Lcom/android/server/GraphicsStatsService$HistoricalData;
    :cond_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    return-void
.end method

.method public initAgnes(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    .line 315
    .local v0, "agnes":Lcom/letv/tracker/agnes/Agnes;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 316
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lcom/letv/tracker/enums/LeUIApp;->isExsited(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lcom/letv/tracker/enums/LeUIApp;->valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/LeUIApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->getApp(Lcom/letv/tracker/enums/LeUIApp;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAgnesApp:Lcom/letv/tracker/agnes/App;

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GraphicsStatsService;->mAgnesApp:Lcom/letv/tracker/agnes/App;

    goto :goto_0
.end method

.method public report(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/server/GraphicsStatsService;->initAgnes(Landroid/content/Context;)V

    .line 325
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mAgnesApp:Lcom/letv/tracker/agnes/App;

    if-nez v6, :cond_0

    .line 326
    const-string v6, "GraphicsStatsService"

    const-string v7, " getWidget ... mApp is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mAgnesApp:Lcom/letv/tracker/agnes/App;

    const-string v7, "performance"

    invoke-virtual {v6, v7}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v5

    .line 331
    .local v5, "widget":Lcom/letv/tracker/agnes/Widget;
    if-nez v5, :cond_1

    .line 332
    const-string v6, "GraphicsStatsService"

    const-string v7, " mWidget is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_1
    const-string v6, "JankyFrameRate"

    invoke-virtual {v5, v6}, Lcom/letv/tracker/agnes/Widget;->createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;

    move-result-object v1

    .line 337
    .local v1, "event":Lcom/letv/tracker/agnes/Event;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 338
    .local v4, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 339
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    .local v2, "inputName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    .local v3, "inputValue":Ljava/lang/String;
    invoke-virtual {v1, v2, v3}, Lcom/letv/tracker/agnes/Event;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 344
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "inputName":Ljava/lang/String;
    .end local v3    # "inputValue":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    goto :goto_0
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 114
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 115
    .local v3, "pid":I
    const/4 v2, 0x0

    .line 116
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 118
    .local v0, "callingIdentity":J
    :try_start_0
    invoke-direct {p0, v4, p1}, Lcom/android/server/GraphicsStatsService;->isValid(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 119
    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 121
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-direct {p0, p2, v4, v3, p1}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/os/IBinder;IILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 123
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    return-object v2

    .line 123
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
