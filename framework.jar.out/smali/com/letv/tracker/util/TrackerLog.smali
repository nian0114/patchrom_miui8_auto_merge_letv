.class public final Lcom/letv/tracker/util/TrackerLog;
.super Ljava/lang/Object;
.source "TrackerLog.java"


# static fields
.field private static final DATA_PATTERN:Ljava/lang/String; = "yyyy-MM-dd hh:mm:ss"

.field private static final LOG_FAILED:Ljava/lang/String; = "Failed to write log file"

.field private static agnesVersion:Ljava/lang/String;

.field private static logPath:Ljava/lang/String;

.field private static needLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/tracker/util/TrackerLog;->needLog:Z

    .line 36
    const-string v0, "[unknown]"

    sput-object v0, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-boolean v4, Lcom/letv/tracker/util/TrackerLog;->needLog:Z

    if-eqz v4, :cond_0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v4, Lcom/letv/tracker/util/TrackerLog;->logPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/letv/tracker/util/TrackerLog;->getLogPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 129
    .local v3, "w":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 130
    .local v2, "printWriter":Ljava/io/PrintWriter;
    const-string v4, "%s %s [ERROR] [%s] Id : %s; Discription : %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "w":Ljava/io/Writer;
    :cond_0
    return-void

    .line 134
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/letv/tracker/error/TrackerException;

    const-string v5, "Failed to write log file"

    invoke-direct {v4, v5, v1}, Lcom/letv/tracker/error/TrackerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "discription"    # Ljava/lang/String;
    .param p3, "errCause"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    sget-boolean v4, Lcom/letv/tracker/util/TrackerLog;->needLog:Z

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    sget-object v4, Lcom/letv/tracker/util/TrackerLog;->logPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/letv/tracker/util/TrackerLog;->getLogPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 94
    .local v3, "w":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 95
    .local v2, "printWriter":Ljava/io/PrintWriter;
    const-string v4, "%s %s [ERROR] [%s] ID : %s; Description : %s; Exception : %s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    aput-object p2, v5, v6

    const/4 v6, 0x5

    invoke-static {p3}, Lcom/letv/tracker/util/TrackerLog;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 102
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "w":Ljava/io/Writer;
    :cond_0
    return-void

    .line 103
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/letv/tracker/error/TrackerException;

    const-string v5, "Failed to write log file"

    invoke-direct {v4, v5, v1}, Lcom/letv/tracker/error/TrackerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static declared-synchronized getLogPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/letv/tracker/util/TrackerLog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/letv/tracker/util/TrackerLog;->logPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-boolean v4, Lcom/letv/tracker/util/TrackerLog;->needLog:Z

    if-eqz v4, :cond_0

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v4, Lcom/letv/tracker/util/TrackerLog;->logPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "dateFormat":Ljava/text/DateFormat;
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/letv/tracker/util/TrackerLog;->getLogPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 160
    .local v3, "w":Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 161
    .local v2, "printWriter":Ljava/io/PrintWriter;
    const-string v4, "%s %s [LOG] [%s] ID : %s; Discription : %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 164
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v2    # "printWriter":Ljava/io/PrintWriter;
    .end local v3    # "w":Ljava/io/Writer;
    :cond_0
    return-void

    .line 165
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/letv/tracker/error/TrackerException;

    const-string v5, "Failed to write log file"

    invoke-direct {v4, v5, v1}, Lcom/letv/tracker/error/TrackerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static setAgnesVersion(Ljava/lang/String;)V
    .locals 2
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/tracker/util/TrackerLog;->agnesVersion:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method

.method public static declared-synchronized setLogPath(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v1, Lcom/letv/tracker/util/TrackerLog;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/TrackerLog.log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/tracker/util/TrackerLog;->logPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setNeedLog(Z)V
    .locals 0
    .param p0, "isNeed"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lcom/letv/tracker/util/TrackerLog;->needLog:Z

    .line 65
    return-void
.end method

.method private static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 182
    .local v1, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
