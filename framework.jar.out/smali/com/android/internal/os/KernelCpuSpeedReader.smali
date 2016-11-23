.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private mAllProcFiles:[Ljava/lang/String;

.field private final mDeltaSpeedTimes:[J

.field private final mLastSpeedTimes:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    .line 45
    const-string v0, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 47
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    .line 48
    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 49
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I
    .param p3, "numCores"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    .line 92
    new-array v1, p3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private chooseProcFile()Ljava/lang/String;
    .locals 7

    .prologue
    .line 100
    iget-object v6, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 101
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mAllProcFiles:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 102
    .local v4, "procFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 104
    if-eqz v1, :cond_0

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "procFile":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 104
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "procFile":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .restart local v1    # "fileReader":Ljava/io/FileReader;
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 109
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "fileReader":Ljava/io/FileReader;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "procFile":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public readDelta()[J
    .locals 15

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuSpeedReader;->chooseProcFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 61
    :try_start_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v4, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 63
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v3, 0x0

    .line 64
    .local v3, "speedIndex":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    array-length v8, v8

    if-ge v3, v8, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {v4, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long v6, v10, v12

    .line 70
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v8, v3

    cmp-long v8, v6, v10

    if-gez v8, :cond_0

    .line 73
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    aput-wide v6, v8, v3

    .line 77
    :goto_1
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v6, v8, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_0

    .line 75
    :cond_0
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    iget-object v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aget-wide v10, v10, v3

    sub-long v10, v6, v10

    aput-wide v10, v8, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 59
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v6    # "time":J
    :catch_0
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :catchall_0
    move-exception v9

    move-object v14, v9

    move-object v9, v8

    move-object v8, v14

    :goto_2
    if-eqz v2, :cond_1

    if-eqz v9, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_3
    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "KernelCpuSpeedReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read cpu-freq: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([JJ)V

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    iget-object v8, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v8

    .line 80
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "speedIndex":I
    .restart local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_3
    if-eqz v2, :cond_2

    if-eqz v9, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    .end local v3    # "speedIndex":I
    .end local v4    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_2
.end method
