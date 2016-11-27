.class public Lcom/android/server/phonebind/PhoneBindService;
.super Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;
.source "PhoneBindService.java"


# static fields
.field private static AP_CFG_MAG_IMP_LID:I = 0x0

.field private static final BIND_VALUE_MAX_SIZE:I = 0x20

.field private static final DEBUG:Z = true

.field public static final DISABLE_DISK_DUMP:I = 0x0

.field public static final ENABLE_DISK_DUMP:I = 0x1

.field public static final FACTORY_MODE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "leuiphonebind"

.field private static final TOKEN:Ljava/lang/String; = "leui_phone_bind_key"

.field public static final YEPDIAG_FILE_PATH:Ljava/lang/String;


# instance fields
.field private mBindKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDiskDumpFlag:I

.field private mReadLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "persist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serialno"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/phonebind/PhoneBindService;->YEPDIAG_FILE_PATH:Ljava/lang/String;

    const/16 v0, 0x4d

    sput v0, Lcom/android/server/phonebind/PhoneBindService;->AP_CFG_MAG_IMP_LID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mReadLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->initStatus()V

    return-void
.end method

.method private checkPhoneEnvironment()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v12, Lcom/android/server/phonebind/PhoneBindService;->YEPDIAG_FILE_PATH:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    if-nez v4, :cond_0

    const-string v11, "leuiphonebind"

    const-string v12, "checkPhoneEnvironment, file is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v10

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v11, "leuiphonebind"

    const-string v12, "checkPhoneEnvironment, file is directory"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    const-string v10, "leuiphonebind"

    const-string v12, "checkPhoneEnvironment, file not exists"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto :goto_0

    :cond_2
    const-string v12, "leuiphonebind"

    const-string v13, "checkPhoneEnvironment, file exists"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "content":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, "instream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "inputreader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .local v0, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "instream":Ljava/io/FileInputStream;
    .local v8, "instream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .local v6, "inputreader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .local v1, "buffreader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_f

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v6, :cond_e

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    const/4 v5, 0x0

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    :goto_2
    if-eqz v8, :cond_d

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    const/4 v7, 0x0

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .end local v9    # "line":Ljava/lang/String;
    :cond_4
    :goto_4
    const-string v12, "leuiphonebind"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPhoneEnvironment, content:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_c

    const-string v10, "leuiphonebind"

    const-string v12, "checkPhoneEnvironment, content is factory mode"

    invoke-static {v10, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto/16 :goto_0

    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v9    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    :goto_5
    const-string v12, "leuiphonebind"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPhoneEnvironment, close resource exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    const-string v12, "leuiphonebind"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPhoneEnvironment, read content exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    const/4 v5, 0x0

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v7, 0x0

    :cond_7
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto/16 :goto_4

    :catch_2
    move-exception v3

    const-string v12, "leuiphonebind"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkPhoneEnvironment, close resource exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v0, :cond_8

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    const/4 v5, 0x0

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v7, 0x0

    :cond_a
    if-eqz v4, :cond_b

    const/4 v4, 0x0

    :cond_b
    :goto_8
    throw v10

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "leuiphonebind"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkPhoneEnvironment, close resource exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_c
    const-string v11, "leuiphonebind"

    const-string v12, "checkPhoneEnvironment, end ..."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v9    # "line":Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    goto/16 :goto_5

    :catch_8
    move-exception v3

    goto/16 :goto_5

    :cond_d
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/FileInputStream;
    .restart local v7    # "instream":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/FileInputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/FileInputStream;
    :cond_e
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    goto/16 :goto_2

    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    :cond_f
    move-object v0, v1

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "disk"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHONEBIND MANAGER (dumpsys leuiphonebind, get Key from disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->getLeTVSNValueInternal()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "    [mBindKey]: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHONEBIND MANAGER (dumpsys leuiphonebind, get Key from mem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLeTVSNValueInternal()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .local v3, "letvSN":Ljava/lang/String;
    :try_start_0
    sget v6, Lcom/android/server/phonebind/PhoneBindService;->AP_CFG_MAG_IMP_LID:I

    const/16 v7, 0x20

    invoke-static {v6, v7}, Lcom/android/server/phonebind/PhoneBindService;->nativeReadFile(II)[B

    move-result-object v1

    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "leuiphonebind"

    const-string v7, "getLeTVSNValueInternal bytes is null..."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "bytes":[B
    :goto_0
    return-object v5

    .restart local v1    # "bytes":[B
    :cond_1
    array-length v6, v1

    const/16 v7, 0x20

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "byteCount":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/phonebind/PhoneBindService;->isEmpty([BI)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v0}, Ljava/lang/String;-><init>([BII)V

    .end local v3    # "letvSN":Ljava/lang/String;
    .local v4, "letvSN":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "letvSN":Ljava/lang/String;
    .restart local v3    # "letvSN":Ljava/lang/String;
    :goto_1
    const-string v6, "leuiphonebind"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLeTVSNValueInternal byteCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", letvSN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    goto :goto_0

    :cond_2
    const-string v6, "leuiphonebind"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLeTVSNValueInternal bytes is empty,  byteCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "byteCount":I
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "leuiphonebind"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLeTVSNValueInternal fail, e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initStatus()V
    .locals 2

    .prologue
    const-string v0, "leuiphonebind"

    const-string v1, "[PhoneBindService] initStatus..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->readConfigurationLocked()V

    return-void
.end method

.method private final isEmpty([BI)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "byteCount"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static native nativeReadFile(II)[B
.end method

.method private readConfigurationLocked()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    const-string v0, "leuiphonebind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneBindService] readConfigurationLocked, mDiskDumpFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump PhoneBind from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_3

    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .local v0, "arg":Ljava/lang/String;
    const-string v4, "disk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/phonebind/PhoneBindService;->mDiskDumpFlag:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->checkPhoneEnvironment()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v6}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    invoke-direct {p0, p2, v6}, Lcom/android/server/phonebind/PhoneBindService;->dumpInternal(Ljava/io/PrintWriter;Z)V

    goto :goto_0
.end method

.method public getLeTVSNValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const-string v0, "leui_phone_bind_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leuiphonebind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLeTVSNValue token error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "token is illegal"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mContext:Landroid/content/Context;

    const-string v1, "leui.android.permission.READ_PHONE_BIND_KEY"

    const-string v2, "no permission read key."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/phonebind/PhoneBindService;->mReadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/phonebind/PhoneBindService;->getLeTVSNValueInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "leuiphonebind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLeTVSNValue mBindKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/phonebind/PhoneBindService;->mBindKey:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    const-string v0, "leuiphonebind"

    const-string v1, "[PhoneBindService] systemReady..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
