.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$FileDescriptorRecord;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 70
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 71
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 72
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 7
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 268
    .local v4, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v4, :cond_0

    .line 269
    const/4 v3, 0x0

    monitor-exit p0

    .line 305
    :goto_0
    return v3

    .line 272
    :cond_0
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 273
    .local v3, "oldWatchedEvents":I
    and-int/2addr p2, v3

    .line 274
    if-nez p2, :cond_1

    .line 275
    monitor-exit p0

    goto :goto_0

    .line 280
    .end local v3    # "oldWatchedEvents":I
    .end local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 278
    .restart local v3    # "oldWatchedEvents":I
    .restart local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_1
    :try_start_1
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 279
    .local v1, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    .line 280
    .local v5, "seq":I
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v2

    .line 285
    .local v2, "newWatchedEvents":I
    if-eqz v2, :cond_2

    .line 286
    or-int/lit8 v2, v2, 0x4

    .line 291
    :cond_2
    if-eq v2, v3, :cond_4

    .line 292
    monitor-enter p0

    .line 293
    :try_start_2
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 294
    .local v0, "index":I
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v5, :cond_3

    .line 296
    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 297
    if-nez v2, :cond_3

    .line 298
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 301
    :cond_3
    monitor-exit p0

    .end local v0    # "index":I
    :cond_4
    move v3, v2

    .line 305
    goto :goto_0

    .line 301
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 88
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 90
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 466
    monitor-enter p0

    .line 467
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 468
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 469
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 470
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 471
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 473
    const/4 v2, 0x0

    .line 474
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 475
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 476
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 477
    move-object v2, v1

    .line 478
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 481
    :cond_0
    if-eqz v2, :cond_1

    .line 482
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 483
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 488
    :goto_1
    monitor-exit p0

    return v3

    .line 485
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 486
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 489
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v2    # "prev":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 6

    .prologue
    .line 734
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 735
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 736
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 737
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 738
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 749
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    .line 742
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 743
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 746
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 751
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 753
    :cond_3
    move-object v1, v0

    .line 754
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 755
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 756
    if-nez v0, :cond_3

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    .line 724
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 725
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 726
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 727
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 728
    move-object v1, v0

    .line 729
    goto :goto_0

    .line 730
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 731
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 227
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 228
    .local v1, "index":I
    const/4 v2, 0x0

    .line 229
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 231
    if-ltz v1, :cond_1

    .line 232
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 233
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-eqz v2, :cond_1

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-eqz p2, :cond_4

    .line 240
    or-int/lit8 p2, p2, 0x4

    .line 241
    if-nez v2, :cond_3

    .line 242
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 243
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 245
    :cond_2
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 246
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    :goto_1
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    goto :goto_0

    .line 248
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 249
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 250
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    goto :goto_1

    .line 253
    :cond_4
    if-eqz v2, :cond_0

    .line 254
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 255
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    if-nez p3, :cond_1

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    monitor-enter p0

    .line 197
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 198
    monitor-exit p0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 762
    monitor-enter p0

    .line 763
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 764
    .local v2, "now":J
    const/4 v1, 0x0

    .line 765
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 767
    add-int/lit8 v1, v1, 0x1

    .line 765
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 769
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", quitting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 771
    monitor-exit p0

    .line 772
    return-void

    .line 771
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final declared-synchronized dumpMessageQueue(Ljava/io/PrintWriter;I)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "num"    # I

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    const-string v1, "  "

    .line 779
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump first "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messages in Queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 782
    .local v2, "tempMsg":Landroid/os/Message;
    const/4 v0, 0x0

    .line 783
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_1

    .line 784
    add-int/lit8 v0, v0, 0x1

    .line 785
    if-gt v0, p2, :cond_0

    .line 786
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message in Queue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 789
    :cond_0
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 791
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total Message Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    .end local v0    # "count":I
    .end local v2    # "tempMsg":Landroid/os/Message;
    :goto_1
    monitor-exit p0

    return-void

    .line 793
    :cond_2
    :try_start_1
    const-string/jumbo v3, "mMessages is null"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 778
    .end local v1    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 535
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 536
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    :cond_1
    monitor-enter p0

    .line 543
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v5, :cond_2

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 548
    monitor-exit p0

    .line 585
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return v1

    .line 551
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 552
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 553
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 555
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-eqz v5, :cond_3

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_5

    .line 557
    :cond_3
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 558
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 559
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 581
    .local v1, "needWake":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 582
    iget-wide v6, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v6, v7}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 584
    :cond_4
    monitor-exit p0

    move v1, v4

    .line 585
    goto :goto_0

    .line 564
    .end local v1    # "needWake":Z
    :cond_5
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .line 567
    .restart local v1    # "needWake":Z
    :cond_6
    :goto_2
    move-object v3, v2

    .line 568
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 569
    if-eqz v2, :cond_7

    iget-wide v6, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v6

    if-gez v5, :cond_8

    .line 576
    :cond_7
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 577
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 584
    .end local v1    # "needWake":Z
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 572
    .restart local v1    # "needWake":Z
    .restart local v2    # "p":Landroid/os/Message;
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_8
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 573
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 601
    :goto_0
    return v1

    .line 593
    :cond_0
    monitor-enter p0

    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 595
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 596
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 597
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 602
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 599
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 601
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 606
    if-nez p1, :cond_0

    .line 618
    :goto_0
    return v1

    .line 610
    :cond_0
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 612
    .local v0, "p":Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 613
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 614
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 619
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 616
    .restart local v0    # "p":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 618
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "now":J
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v2, v2, Landroid/os/Message;->when:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isPolling()Z
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 18

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    .line 313
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_0

    .line 314
    const/4 v5, 0x0

    .line 363
    :goto_0
    return-object v5

    .line 317
    :cond_0
    const/4 v7, -0x1

    .line 318
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    .line 320
    .local v6, "nextPollTimeoutMillis":I
    :goto_1
    if-eqz v6, :cond_1

    .line 321
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 324
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 326
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 329
    .local v8, "now":J
    const/4 v10, 0x0

    .line 330
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 331
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_3

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_3

    .line 334
    :cond_2
    move-object v10, v5

    .line 335
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 336
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 338
    :cond_3
    if-eqz v5, :cond_6

    .line 339
    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 341
    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    .line 361
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_7

    .line 362
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V

    .line 363
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 383
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    .end local v10    # "prevMsg":Landroid/os/Message;
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 344
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    .restart local v10    # "prevMsg":Landroid/os/Message;
    :cond_4
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 345
    if-eqz v10, :cond_5

    .line 346
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 350
    :goto_3
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 352
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V

    .line 353
    monitor-exit p0

    goto :goto_0

    .line 348
    :cond_5
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 357
    :cond_6
    const/4 v6, -0x1

    goto :goto_2

    .line 369
    :cond_7
    if-gez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_9

    .line 371
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 373
    :cond_9
    if-gtz v7, :cond_a

    .line 375
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 376
    monitor-exit p0

    goto/16 :goto_1

    .line 379
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_b

    .line 380
    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 382
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 383
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v7, :cond_d

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    .line 389
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 391
    const/4 v4, 0x0

    .line 393
    .local v4, "keep":Z
    :try_start_2
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 398
    :goto_5
    if-nez v4, :cond_c

    .line 399
    monitor-enter p0

    .line 400
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 401
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 387
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 394
    :catch_0
    move-exception v11

    .line 395
    .local v11, "t":Ljava/lang/Throwable;
    const-string v14, "MessageQueue"

    const-string v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 401
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v14

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v14

    .line 406
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    .end local v4    # "keep":Z
    :cond_d
    const/4 v7, 0x0

    .line 410
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public postSyncBarrier()I
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 415
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    monitor-enter p0

    .line 420
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v0, :cond_1

    .line 421
    monitor-exit p0

    .line 434
    :goto_0
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 425
    if-eqz p1, :cond_2

    .line 426
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 432
    :goto_1
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 433
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 428
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 691
    if-nez p1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 695
    :cond_0
    monitor-enter p0

    .line 696
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 700
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 701
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 702
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 703
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 704
    move-object v2, v0

    .line 705
    goto :goto_1

    .line 708
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 709
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 710
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 711
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 712
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 713
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 714
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 720
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 718
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 719
    goto :goto_2

    .line 720
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 627
    :cond_0
    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 632
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 633
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 634
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 635
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 636
    move-object v2, v0

    .line 637
    goto :goto_1

    .line 640
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 641
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 642
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 643
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 645
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 646
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 647
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 653
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 651
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 652
    goto :goto_2

    .line 653
    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 657
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 666
    .local v2, "p":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 667
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 668
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 669
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 670
    move-object v2, v0

    .line 671
    goto :goto_1

    .line 674
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 675
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 676
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 677
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 679
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 680
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 681
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 687
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 685
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 686
    goto :goto_2

    .line 687
    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    monitor-enter p0

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 220
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 505
    monitor-enter p0

    .line 506
    const/4 v2, 0x0

    .line 507
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 508
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 509
    :cond_0
    move-object v2, v1

    .line 510
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 512
    :cond_1
    if-nez v1, :cond_2

    .line 513
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 531
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 517
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 518
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 519
    const/4 v0, 0x0

    .line 524
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 528
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v3, :cond_3

    .line 529
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V

    .line 531
    :cond_3
    monitor-exit p0

    .line 532
    return-void

    .line 521
    .end local v0    # "needWake":Z
    :cond_4
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 522
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    :goto_2
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
