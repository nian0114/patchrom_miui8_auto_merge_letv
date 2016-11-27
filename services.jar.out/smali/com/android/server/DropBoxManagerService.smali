.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 88
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 92
    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 93
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 94
    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 95
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 97
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 103
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 141
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/DropBoxManagerService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    new-instance v1, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DropBoxManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)Lcom/android/server/DropBoxManagerService$EntryFile;
    .locals 19
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 666
    .local v6, "t":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v6

    invoke-direct {v4, v8, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v18

    .line 667
    .local v18, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v11, 0x0

    .line 668
    .local v11, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 669
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v11, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 670
    .restart local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v18 .. v18}, Ljava/util/SortedSet;->clear()V

    .line 673
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 677
    :cond_1
    if-eqz v11, :cond_4

    .line 678
    move-object v10, v11

    .local v10, "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    array-length v14, v10

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_4

    aget-object v13, v10, v12

    .line 679
    .local v13, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/DropBoxManagerService$FileList;

    .line 681
    .local v15, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v15, :cond_2

    iget-object v3, v15, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    iget v3, v15, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v4, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 684
    :cond_2
    iget v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    .line 685
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .local v16, "t":J
    iget v8, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .line 678
    .end local v16    # "t":J
    .restart local v6    # "t":J
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 688
    :cond_3
    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x1

    add-long v16, v6, v8

    .end local v6    # "t":J
    .restart local v16    # "t":J
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v6, v16

    .end local v16    # "t":J
    .restart local v6    # "t":J
    goto :goto_1

    .line 694
    .end local v10    # "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v12    # "i$":I
    .end local v13    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "len$":I
    .end local v15    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_4
    if-nez p1, :cond_5

    .line 696
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v0, v6, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 697
    .local v2, "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_2
    monitor-exit p0

    return-object v2

    .line 700
    .end local v2    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    :try_start_1
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    .line 701
    .restart local v2    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 660
    .end local v2    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v6    # "t":J
    .end local v11    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v18    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 647
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 649
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 651
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_0
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 654
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1
    monitor-exit p0

    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_1

    .line 598
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 599
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 602
    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 603
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_6

    .line 610
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 611
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 604
    .end local v4    # "files":[Ljava/io/File;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 613
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 614
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 617
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_6

    aget-object v3, v0, v5

    .line 618
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 619
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 617
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 624
    :cond_3
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 625
    .local v2, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 626
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    :cond_4
    iget-wide v8, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 629
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 634
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 637
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimToFit()J
    .locals 32

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_age_seconds"

    const v28, 0x3f480

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 715
    .local v6, "ageSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_max_files"

    const/16 v28, 0x3e8

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 717
    .local v13, "maxFiles":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    mul-int/lit16 v0, v6, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .line 718
    .local v8, "cutoffMillis":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 720
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    cmp-long v26, v26, v8

    if-lez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v0, v13, :cond_6

    .line 733
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 734
    .local v24, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1388

    add-long v26, v26, v28

    cmp-long v26, v24, v26

    if-lez v26, :cond_2

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_quota_percent"

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 737
    .local v17, "quotaPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_reserve_percent"

    const/16 v28, 0xa

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 739
    .local v18, "reservePercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "dropbox_quota_kb"

    const/16 v28, 0x1400

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 742
    .local v16, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    .line 744
    .local v7, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockCount()I

    move-result v26

    mul-int v26, v26, v18

    div-int/lit8 v26, v26, 0x64

    sub-int v15, v7, v26

    .line 745
    .local v15, "nonreserved":I
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0

    div-int v14, v26, v27

    .line 746
    .local v14, "maximum":I
    const/16 v26, 0x0

    mul-int v27, v15, v17

    div-int/lit8 v27, v27, 0x64

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    move/from16 v0, v26

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 747
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 764
    .end local v7    # "available":I
    .end local v14    # "maximum":I
    .end local v15    # "nonreserved":I
    .end local v16    # "quotaKb":I
    .end local v17    # "quotaPercent":I
    .end local v18    # "reservePercent":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    .local v23, "unsqueezed":I
    const/16 v19, 0x0

    .line 767
    .local v19, "squeezed":I
    new-instance v22, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 768
    .local v22, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 769
    .local v20, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v19, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    sub-int v27, v27, v23

    div-int v27, v27, v19

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    .line 775
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    sub-int v26, v26, v23

    div-int v21, v26, v19

    .line 778
    .local v21, "tagQuota":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 779
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 795
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "squeezed":I
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v21    # "tagQuota":I
    .end local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v23    # "unsqueezed":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v26, v26, v27

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    monitor-exit p0

    return-wide v26

    .line 722
    .end local v24    # "uptimeMillis":J
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/DropBoxManagerService$FileList;

    .line 723
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 724
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 725
    :cond_8
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 713
    .end local v6    # "ageSeconds":I
    .end local v8    # "cutoffMillis":J
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "maxFiles":I
    .end local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    .line 772
    .restart local v6    # "ageSeconds":I
    .restart local v8    # "cutoffMillis":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "maxFiles":I
    .restart local v19    # "squeezed":I
    .restart local v20    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v22    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v23    # "unsqueezed":I
    .restart local v24    # "uptimeMillis":J
    :cond_9
    :try_start_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    sub-int v23, v23, v26

    .line 773
    add-int/lit8 v19, v19, 0x1

    .line 774
    goto/16 :goto_1

    .line 780
    .restart local v21    # "tagQuota":I
    :cond_a
    :goto_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_4

    .line 781
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 782
    .restart local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v26, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 783
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v27, v0

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 786
    :cond_c
    :try_start_3
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 787
    :cond_d
    new-instance v26, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-wide v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 788
    :catch_0
    move-exception v10

    .line 789
    .local v10, "e":Ljava/io/IOException;
    :try_start_4
    const-string v26, "DropBoxManagerService"

    const-string v27, "Can\'t write tombstone file"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .locals 34
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .prologue
    .line 179
    const/16 v26, 0x0

    .line 180
    .local v26, "temp":Ljava/io/File;
    const/16 v22, 0x0

    .line 181
    .local v22, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v25

    .line 182
    .local v25, "tag":Ljava/lang/String;
    const/16 v30, 0x400

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "des":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v9

    .line 185
    .local v9, "flags":I
    and-int/lit8 v30, v9, 0x1

    if-eqz v30, :cond_2

    new-instance v30, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v30 .. v30}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v30
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v9    # "flags":I
    :catch_0
    move-exception v8

    .line 266
    .local v8, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v30, "DropBoxManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Can\'t write: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    if-eqz v22, :cond_0

    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 269
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 270
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 272
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 187
    .restart local v9    # "flags":I
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    if-nez v30, :cond_4

    .line 268
    if-eqz v22, :cond_3

    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 269
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 270
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 189
    :cond_4
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    .line 190
    .local v16, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 192
    .local v12, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v4, v0, [B

    .line 193
    .local v4, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 198
    .local v11, "input":Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 199
    .local v24, "read":I
    :goto_4
    array-length v0, v4

    move/from16 v30, v0

    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 200
    array-length v0, v4

    move/from16 v30, v0

    sub-int v30, v30, v24

    move/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    .line 201
    .local v18, "n":I
    if-gtz v18, :cond_c

    .line 208
    .end local v18    # "n":I
    :cond_5
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "drop"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Thread;->getId()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".tmp"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    .end local v26    # "temp":Ljava/io/File;
    .local v27, "temp":Ljava/io/File;
    :try_start_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 210
    .local v5, "bufferSize":I
    const/16 v30, 0x1000

    move/from16 v0, v30

    if-le v5, v0, :cond_6

    const/16 v5, 0x1000

    .line 211
    :cond_6
    const/16 v30, 0x200

    move/from16 v0, v30

    if-ge v5, v0, :cond_7

    const/16 v5, 0x200

    .line 212
    :cond_7
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    .local v10, "foutput":Ljava/io/FileOutputStream;
    new-instance v23, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v10, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 214
    .end local v22    # "output":Ljava/io/OutputStream;
    .local v23, "output":Ljava/io/OutputStream;
    :try_start_7
    array-length v0, v4

    move/from16 v30, v0

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    and-int/lit8 v30, v9, 0x4

    if-nez v30, :cond_11

    .line 215
    new-instance v22, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 216
    .end local v23    # "output":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/OutputStream;
    or-int/lit8 v9, v9, 0x4

    .line 220
    :cond_8
    :goto_5
    const/16 v30, 0x0

    :try_start_8
    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 223
    .local v20, "now":J
    sub-long v30, v20, v12

    const-wide/16 v32, 0x7530

    cmp-long v30, v30, v32

    if-lez v30, :cond_9

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v16

    .line 225
    move-wide/from16 v12, v20

    .line 228
    :cond_9
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    .line 229
    if-gtz v24, :cond_d

    .line 230
    invoke-static {v10}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 231
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V

    .line 232
    const/16 v22, 0x0

    .line 237
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 238
    .local v14, "len":J
    cmp-long v30, v14, v16

    if-lez v30, :cond_e

    .line 239
    const-string v30, "DropBoxManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Dropping: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " > "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " bytes)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 241
    const/16 v26, 0x0

    .line 247
    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)Lcom/android/server/DropBoxManagerService$EntryFile;

    move-result-object v19

    .line 248
    .local v19, "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v28, v0

    .line 249
    .local v28, "time":J
    const/16 v26, 0x0

    .line 251
    new-instance v7, Landroid/content/Intent;

    const-string v30, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v7, "dropboxIntent":Landroid/content/Intent;
    const-string v30, "tag"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v30, "time"

    move-object/from16 v0, v30

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    const-string v30, "description"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v30, "logname"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v30, v0

    if-nez v30, :cond_a

    .line 258
    const/high16 v30, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 268
    if-eqz v22, :cond_b

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 269
    :cond_b
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 270
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 202
    .end local v5    # "bufferSize":I
    .end local v7    # "dropboxIntent":Landroid/content/Intent;
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v14    # "len":J
    .end local v19    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v20    # "now":J
    .end local v28    # "time":J
    .restart local v18    # "n":I
    :cond_c
    add-int v24, v24, v18

    .line 203
    goto/16 :goto_4

    .line 234
    .end local v18    # "n":I
    .end local v26    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v20    # "now":J
    .restart local v27    # "temp":Ljava/io/File;
    :cond_d
    :try_start_b
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    .line 265
    .end local v5    # "bufferSize":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v20    # "now":J
    :catch_1
    move-exception v8

    move-object/from16 v26, v27

    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    goto/16 :goto_0

    .line 244
    .end local v26    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v14    # "len":J
    .restart local v20    # "now":J
    .restart local v27    # "temp":Ljava/io/File;
    :cond_e
    if-gtz v24, :cond_8

    move-object/from16 v26, v27

    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    goto/16 :goto_7

    .line 268
    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v9    # "flags":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v12    # "lastTrim":J
    .end local v14    # "len":J
    .end local v16    # "max":J
    .end local v20    # "now":J
    .end local v24    # "read":I
    :catchall_0
    move-exception v30

    :goto_9
    if-eqz v22, :cond_f

    :try_start_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 269
    :cond_f
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 270
    if-eqz v26, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    :cond_10
    throw v30

    .line 268
    .restart local v9    # "flags":I
    :catch_2
    move-exception v30

    goto/16 :goto_3

    .restart local v4    # "buffer":[B
    .restart local v5    # "bufferSize":I
    .restart local v7    # "dropboxIntent":Landroid/content/Intent;
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v12    # "lastTrim":J
    .restart local v14    # "len":J
    .restart local v16    # "max":J
    .restart local v19    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v20    # "now":J
    .restart local v24    # "read":I
    .restart local v28    # "time":J
    :catch_3
    move-exception v30

    goto :goto_8

    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v7    # "dropboxIntent":Landroid/content/Intent;
    .end local v9    # "flags":I
    .end local v10    # "foutput":Ljava/io/FileOutputStream;
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v12    # "lastTrim":J
    .end local v14    # "len":J
    .end local v16    # "max":J
    .end local v19    # "out":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v20    # "now":J
    .end local v24    # "read":I
    .end local v28    # "time":J
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v30

    goto/16 :goto_1

    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v31

    goto :goto_a

    .end local v26    # "temp":Ljava/io/File;
    .restart local v4    # "buffer":[B
    .restart local v9    # "flags":I
    .restart local v11    # "input":Ljava/io/InputStream;
    .restart local v12    # "lastTrim":J
    .restart local v16    # "max":J
    .restart local v24    # "read":I
    .restart local v27    # "temp":Ljava/io/File;
    :catchall_1
    move-exception v30

    move-object/from16 v26, v27

    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    goto :goto_9

    .end local v22    # "output":Ljava/io/OutputStream;
    .end local v26    # "temp":Ljava/io/File;
    .restart local v5    # "bufferSize":I
    .restart local v10    # "foutput":Ljava/io/FileOutputStream;
    .restart local v23    # "output":Ljava/io/OutputStream;
    .restart local v27    # "temp":Ljava/io/File;
    :catchall_2
    move-exception v30

    move-object/from16 v22, v23

    .end local v23    # "output":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/OutputStream;
    move-object/from16 v26, v27

    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    goto :goto_9

    .line 265
    .end local v22    # "output":Ljava/io/OutputStream;
    .end local v26    # "temp":Ljava/io/File;
    .restart local v23    # "output":Ljava/io/OutputStream;
    .restart local v27    # "temp":Ljava/io/File;
    :catch_6
    move-exception v8

    move-object/from16 v22, v23

    .end local v23    # "output":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/OutputStream;
    move-object/from16 v26, v27

    .end local v27    # "temp":Ljava/io/File;
    .restart local v26    # "temp":Ljava/io/File;
    goto/16 :goto_0

    .end local v22    # "output":Ljava/io/OutputStream;
    .end local v26    # "temp":Ljava/io/File;
    .restart local v23    # "output":Ljava/io/OutputStream;
    .restart local v27    # "temp":Ljava/io/File;
    :cond_11
    move-object/from16 v22, v23

    .end local v23    # "output":Ljava/io/OutputStream;
    .restart local v22    # "output":Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    const-string v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v26, "out":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "doPrint":Z
    const/4 v13, 0x0

    .line 336
    .local v13, "doFile":Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v27, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 338
    aget-object v3, p3, v17

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, p3, v17

    const-string v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    :cond_1
    const/4 v14, 0x1

    .line 337
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 326
    .end local v13    # "doFile":Z
    .end local v14    # "doPrint":Z
    .end local v17    # "i":I
    .end local v26    # "out":Ljava/lang/StringBuilder;
    .end local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 327
    .local v15, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 318
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 340
    .restart local v13    # "doFile":Z
    .restart local v14    # "doPrint":Z
    .restart local v17    # "i":I
    .restart local v26    # "out":Ljava/lang/StringBuilder;
    .restart local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    aget-object v3, p3, v17

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p3, v17

    const-string v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    :cond_3
    const/4 v13, 0x1

    goto :goto_2

    .line 342
    :cond_4
    aget-object v3, p3, v17

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 343
    const-string v3, "Unknown argument: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    :cond_5
    aget-object v3, p3, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_6
    const-string v3, "Drop box contents: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 352
    const-string v3, "Searching for:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 354
    .end local v8    # "a":Ljava/lang/String;
    :cond_7
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_8
    const/16 v25, 0x0

    .local v25, "numFound":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 358
    .local v24, "numArgs":I
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 359
    .local v29, "time":Landroid/text/format/Time;
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 361
    .local v16, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 362
    const-string v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "date":Ljava/lang/String;
    const/16 v21, 0x1

    .line 364
    .local v21, "match":Z
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    if-eqz v21, :cond_c

    .line 365
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 366
    .local v9, "arg":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const/16 v21, 0x1

    .line 364
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 366
    :cond_b
    const/16 v21, 0x0

    goto :goto_6

    .line 368
    .end local v9    # "arg":Ljava/lang/String;
    :cond_c
    if-eqz v21, :cond_9

    .line 370
    add-int/lit8 v25, v25, 0x1

    .line 371
    if-eqz v14, :cond_d

    const-string v3, "========================================\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_d
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, "(no tag)"

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_f

    .line 374
    const-string v3, " (no file)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 372
    :cond_e
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_7

    .line 376
    :cond_f
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_10

    .line 377
    const-string v3, " (contents lost)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 380
    :cond_10
    const-string v3, " ("

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_11

    const-string v3, "compressed "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_11
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1a

    const-string v3, "text"

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    if-nez v13, :cond_12

    if-eqz v14, :cond_14

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_14

    .line 387
    :cond_12
    if-nez v14, :cond_13

    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_13
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_14
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_19

    if-nez v14, :cond_15

    if-nez v13, :cond_19

    .line 392
    :cond_15
    const/4 v12, 0x0

    .line 393
    .local v12, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v19, 0x0

    .line 395
    .local v19, "isr":Ljava/io/InputStreamReader;
    :try_start_4
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 398
    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v14, :cond_1e

    .line 399
    :try_start_5
    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 400
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_6
    new-array v10, v3, [C

    .line 401
    .local v10, "buf":[C
    const/16 v23, 0x0

    .line 403
    .local v23, "newline":Z
    :cond_16
    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 404
    .local v22, "n":I
    if-gtz v22, :cond_1b

    .line 414
    if-nez v23, :cond_17

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_17
    move-object/from16 v19, v20

    .line 431
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_a
    if-eqz v2, :cond_18

    :try_start_7
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 432
    :cond_18
    if-eqz v19, :cond_19

    .line 434
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 441
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_19
    :goto_b
    if-eqz v14, :cond_9

    :try_start_9
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 382
    :cond_1a
    const-string v3, "data"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_8

    .line 405
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1b
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v10, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v3, v22, -0x1

    aget-char v3, v10, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1d

    const/16 v23, 0x1

    .line 409
    :goto_c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_16

    .line 410
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 411
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 427
    .end local v10    # "buf":[C
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    :catch_1
    move-exception v15

    move-object/from16 v19, v20

    .line 428
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_d
    :try_start_b
    const-string v3, "*** "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 431
    if-eqz v2, :cond_1c

    :try_start_c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 432
    :cond_1c
    if-eqz v19, :cond_19

    .line 434
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_b

    .line 435
    :catch_2
    move-exception v3

    goto :goto_b

    .line 406
    .end local v15    # "e":Ljava/io/IOException;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_1d
    const/16 v23, 0x0

    goto :goto_c

    .line 416
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_1e
    const/16 v3, 0x46

    :try_start_e
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v28

    .line 417
    .local v28, "text":Ljava/lang/String;
    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    if-nez v28, :cond_20

    .line 419
    const-string v3, "[null]"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_1f
    :goto_e
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 427
    .end local v28    # "text":Ljava/lang/String;
    :catch_3
    move-exception v15

    goto :goto_d

    .line 421
    .restart local v28    # "text":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_23

    const/16 v30, 0x1

    .line 422
    .local v30, "truncated":Z
    :goto_f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    if-eqz v30, :cond_1f

    const-string v3, " ..."

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_e

    .line 431
    .end local v28    # "text":Ljava/lang/String;
    .end local v30    # "truncated":Z
    :catchall_1
    move-exception v3

    :goto_10
    if-eqz v2, :cond_21

    :try_start_f
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 432
    :cond_21
    if-eqz v19, :cond_22

    .line 434
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 436
    :cond_22
    :goto_11
    :try_start_11
    throw v3

    .line 421
    .restart local v28    # "text":Ljava/lang/String;
    :cond_23
    const/16 v30, 0x0

    goto :goto_f

    .line 444
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v11    # "date":Ljava/lang/String;
    .end local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "match":Z
    .end local v28    # "text":Ljava/lang/String;
    :cond_24
    if-nez v25, :cond_25

    const-string v3, "(No entries found.)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_25
    if-eqz p3, :cond_26

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_28

    .line 447
    :cond_26
    if-nez v14, :cond_27

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_27
    const-string v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_28
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_0

    .line 435
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v11    # "date":Ljava/lang/String;
    .restart local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "match":Z
    :catch_4
    move-exception v3

    goto/16 :goto_b

    :catch_5
    move-exception v4

    goto :goto_11

    .line 431
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2
    move-exception v3

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_10

    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    goto :goto_10

    .line 427
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catch_6
    move-exception v15

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_d
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 291
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    if-nez p1, :cond_1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_0
    if-nez v9, :cond_2

    move-object v0, v10

    .line 314
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 292
    :catch_0
    move-exception v6

    .line 293
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 294
    goto :goto_1

    .line 297
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_0

    .line 300
    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_2
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 301
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 302
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 303
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 306
    :cond_4
    :try_start_4
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 308
    :catch_1
    move-exception v6

    .line 309
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_5
    move-object v0, v10

    .line 314
    goto :goto_1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 277
    .local v0, "token":J
    :try_start_0
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 280
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 277
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method
