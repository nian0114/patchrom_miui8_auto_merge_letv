.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOCALE_FILE:Ljava/io/File; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static UNCRYPT_FILE:Ljava/io/File; = null

.field public static final sEraseWipeDataCommandAll:Ljava/lang/String; = "--wipe_all"

.field public static final sEraseWipeDataCommandOnlyData:Ljava/lang/String; = "--wipe_data"

.field public static final sEraseWipeDataCommandOnlySdCard:Ljava/lang/String; = "--wipe_sdcard"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "last_locale_1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOCALE_FILE:Ljava/io/File;

    .line 82
    const-string/jumbo v0, "last_"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    .line 85
    const/high16 v0, 0x10000

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ReadInAndPrint(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "fhandle"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 695
    .local v1, "command_read":Ljava/io/FileReader;
    const/16 v5, 0x100

    new-array v2, v5, [C

    .line 696
    .local v2, "data":[C
    const/4 v4, 0x0

    .line 697
    .local v4, "read_cnt":I
    const-string v0, ""

    .line 699
    .local v0, "Content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 700
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 701
    const-string v5, "RecoverySystem"

    const-string v6, ">>>Ready to Read from File:%s exists <<<\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lez v4, :cond_1

    if-ge v3, v4, :cond_1

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    :cond_1
    const-string v5, "RecoverySystem"

    const-string v6, ">>> %d chars,content:%s from Content <<<"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v5, "RecoverySystem"

    const-string v6, "Checking actions are done from %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 713
    return-object v0

    .line 711
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    throw v5
.end method

.method private static varargs WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V
    .locals 8
    .param p0, "fhandle"    # Ljava/io/File;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 720
    .local v2, "command":Ljava/io/FileOutputStream;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 721
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 722
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 724
    const-string v5, "\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 720
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 727
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 732
    return-void

    .line 730
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v5
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 743
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 744
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 759
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-static {v1, p1}, Landroid/os/RecoverySystem;->WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V

    .line 761
    const-string v1, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current build type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-static {v1}, Landroid/os/RecoverySystem;->ReadInAndPrint(Ljava/io/File;)Ljava/lang/String;

    .line 767
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 768
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 770
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Reboot failed (no permissions?)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static broadcastUpgradeSubscripts(Landroid/content/Context;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "upgradeNumber"    # I

    .prologue
    .line 386
    const/4 v2, 0x0

    .line 387
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 388
    const-string/jumbo v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    check-cast v2, Landroid/app/NotificationManager;

    .line 391
    .restart local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 393
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 394
    .local v3, "result":Z
    :try_start_0
    const-string/jumbo v8, "setNotificationSubscript"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/Integer;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 395
    .local v7, "setNotificationSubscriptMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.letv.android.ota"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.letv.android.ota.LeSystemUpgrade"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 396
    .local v4, "resultOTA":Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v8, v4, Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    .line 397
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "resultOTA":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 400
    :cond_1
    const-string v9, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set subscript"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " for ota "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_3

    const-string/jumbo v8, "succeed."

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v3, 0x0

    .line 403
    const-string/jumbo v8, "setNotificationSubscript"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Ljava/lang/Integer;

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 404
    .local v6, "setNotificationSubscript":Ljava/lang/reflect/Method;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "com.android.settings"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "com.android.settings.Settings"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 405
    .local v5, "resultSettings":Ljava/lang/Object;
    if-eqz v5, :cond_2

    instance-of v8, v5, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    .line 406
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "resultSettings":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 410
    :cond_2
    const-string v9, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set subscript"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " for settings "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_4

    const-string/jumbo v8, "succeed."

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v6    # "setNotificationSubscript":Ljava/lang/reflect/Method;
    .end local v7    # "setNotificationSubscriptMethod":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 400
    .restart local v7    # "setNotificationSubscriptMethod":Ljava/lang/reflect/Method;
    :cond_3
    const-string v8, "falied."

    goto :goto_0

    .line 410
    .restart local v6    # "setNotificationSubscript":Ljava/lang/reflect/Method;
    :cond_4
    const-string v8, "falied."
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 412
    .end local v6    # "setNotificationSubscript":Ljava/lang/reflect/Method;
    .end local v7    # "setNotificationSubscriptMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "RecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calling setNotificationSubscript method failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 414
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "RecoverySystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calling setNotificationSubscript method failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 116
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 118
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 120
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 121
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 122
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 124
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 126
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    .line 128
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 134
    return-object v4
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 781
    const/4 v3, 0x0

    .line 783
    .local v3, "log":Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 792
    :goto_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 793
    .local v4, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 794
    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 784
    .end local v2    # "i":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v6, "No recovery log file"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 786
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 787
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading recovery log"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 797
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 799
    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 803
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "filename":Ljava/lang/String;
    const-string v6, "ro.crypto.state"

    const-string v7, "unsupported"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cryptoStatus":Ljava/lang/String;
    const-string v6, "encrypted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .local v3, "isEncrypted":Z
    if-eqz v3, :cond_1

    new-instance v5, Ljava/io/FileWriter;

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .local v5, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    invoke-virtual {v6, v10, v9}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "RecoverySystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting readable for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "RecoverySystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " !!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "/data/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "@/cache/recovery/block.map"

    .end local v5    # "uncryptFile":Ljava/io/FileWriter;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--update_package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "localeArg":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v9

    aput-object v4, v6, v10

    invoke-static {p0, v6}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    return-void

    .end local v2    # "filenameArg":Ljava/lang/String;
    .end local v4    # "localeArg":Ljava/lang/String;
    .restart local v5    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    throw v6
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "wipeData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 487
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V

    .line 515
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string v3, "/data/media/0/"

    .line 492
    .local v3, "SDCardPath":Ljava/lang/String;
    const-string v0, "/storage/emulated/legacy/"

    .line 493
    .local v0, "EmulatedPath":Ljava/lang/String;
    const-string v1, "/storage/emulated/0/"

    .line 494
    .local v1, "EmulatedPath1":Ljava/lang/String;
    const-string v2, "/mnt/shell/emulated/0"

    .line 496
    .local v2, "EmulatedPath2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "filename":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 498
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 505
    :cond_1
    :goto_1
    const-string v9, "RecoverySystem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!! REBOOTING TO WIPE DATA AND INSTALL "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " !!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v8, "--wipe_data"

    .line 508
    .local v8, "wipeDataArg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--update_package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "filenameArg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, "reasonArg":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 511
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 513
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--locale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "localeArg":Ljava/lang/String;
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "--wipe_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-static {p0, v9}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    .end local v5    # "filenameArg":Ljava/lang/String;
    .end local v6    # "localeArg":Ljava/lang/String;
    .end local v7    # "reasonArg":Ljava/lang/String;
    .end local v8    # "wipeDataArg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 500
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 501
    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 502
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static installPackageNotReboot(Landroid/content/Context;Ljava/io/File;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const-string v3, "/data/media/0/"

    .line 423
    .local v3, "SDCardPath":Ljava/lang/String;
    const-string v0, "/storage/emulated/legacy/"

    .line 424
    .local v0, "EmulatedPath":Ljava/lang/String;
    const-string v1, "/storage/emulated/0/"

    .line 425
    .local v1, "EmulatedPath1":Ljava/lang/String;
    const-string v2, "/mnt/shell/emulated/0"

    .line 427
    .local v2, "EmulatedPath2":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "filename":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 429
    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 436
    :cond_0
    :goto_0
    new-instance v9, Ljava/io/FileWriter;

    sget-object v10, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 438
    .local v9, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    .line 443
    const-string v10, "RecoverySystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!! WRITE_MISC_ONLY TO INSTALL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " !!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--update_package="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "filenameArg":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--locale="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, "localeArg":Ljava/lang/String;
    sget-object v10, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 447
    sget-object v10, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 448
    sget-object v10, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 450
    new-instance v4, Ljava/io/FileWriter;

    sget-object v10, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 452
    .local v4, "command":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 453
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 455
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 457
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 460
    const-string/jumbo v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 461
    .local v8, "pm":Landroid/os/PowerManager;
    const-string v10, "WRITE_MISC_ONLY"

    invoke-virtual {v8, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 462
    const-string v10, "RecoverySystem"

    const-string v11, "!!! pm.WRITE_MISC_ONLY  !!!\n"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 430
    .end local v4    # "command":Ljava/io/FileWriter;
    .end local v6    # "filenameArg":Ljava/lang/String;
    .end local v7    # "localeArg":Ljava/lang/String;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v9    # "uncryptFile":Ljava/io/FileWriter;
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 431
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 432
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 433
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 440
    .restart local v9    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_0
    move-exception v10

    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V

    throw v10

    .line 457
    .restart local v4    # "command":Ljava/io/FileWriter;
    .restart local v6    # "filenameArg":Ljava/lang/String;
    .restart local v7    # "localeArg":Ljava/lang/String;
    :catchall_1
    move-exception v10

    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    throw v10
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 678
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 532
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 537
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 543
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 566
    .local v13, "um":Landroid/os/UserManager;
    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 571
    .local v9, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 573
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$1;

    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 583
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    .line 585
    const/4 v12, 0x0

    .line 586
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 587
    const-string v12, "--shutdown_after"

    .line 590
    :cond_1
    const/4 v11, 0x0

    .line 591
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 595
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 596
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v0, v2

    const/4 v2, 0x1

    const-string v3, "--wipe_data"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v11, v0, v2

    const/4 v2, 0x3

    aput-object v10, v0, v2

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 622
    .local v13, "um":Landroid/os/UserManager;
    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 627
    .local v9, "condition":Landroid/os/ConditionVariable;
    const-string v0, "RecoverySystem"

    const-string v2, "Ready to send broadcast: android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 649
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    .line 650
    const-string v0, "RecoverySystem"

    const-string v2, "Finish to send broadcast: android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v12, 0x0

    .line 653
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 654
    const-string v12, "--shutdown_after"

    .line 657
    :cond_1
    const/4 v11, 0x0

    .line 658
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 662
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 663
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v0, v2

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object v11, v0, v2

    const/4 v2, 0x3

    aput-object v10, v0, v2

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 811
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 812
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 813
    return-object p0
.end method

.method public static updateLocale()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "localeStr":Ljava/lang/String;
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 826
    sget-object v1, Landroid/os/RecoverySystem;->LOCALE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 827
    sget-object v1, Landroid/os/RecoverySystem;->LOCALE_FILE:Ljava/io/File;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 50
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 170
    .local v16, "fileLen":J
    new-instance v30, Ljava/io/RandomAccessFile;

    const-string/jumbo v45, "r"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v30, "raf":Ljava/io/RandomAccessFile;
    const/16 v24, 0x0

    .line 173
    .local v24, "lastPercent":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 174
    .local v26, "lastPublishTime":J
    if-eqz p1, :cond_0

    .line 175
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 178
    :cond_0
    const-wide/16 v46, 0x6

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 179
    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v15, v0, [B

    .line 180
    .local v15, "footer":[B
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    const/16 v45, 0x2

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    const/16 v45, 0x3

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_2

    .line 183
    :cond_1
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (no footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local v15    # "footer":[B
    .end local v26    # "lastPublishTime":J
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v45

    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    throw v45

    .line 186
    .restart local v15    # "footer":[B
    .restart local v26    # "lastPublishTime":J
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/16 v45, 0x4

    :try_start_1
    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x5

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v10, v45, v46

    .line 187
    .local v10, "commentSize":I
    const/16 v45, 0x0

    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x1

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v36, v45, v46

    .line 189
    .local v36, "signatureStart":I
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    new-array v14, v0, [B

    .line 190
    .local v14, "eocd":[B
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 191
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 195
    const/16 v45, 0x0

    aget-byte v45, v14, v45

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_4

    .line 197
    :cond_3
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (bad footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 200
    :cond_4
    const/16 v18, 0x4

    .local v18, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x3

    move/from16 v0, v18

    move/from16 v1, v45

    if-ge v0, v1, :cond_6

    .line 201
    aget-byte v45, v14, v18

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    .line 203
    new-instance v45, Ljava/security/SignatureException;

    const-string v46, "EOCD marker found after start of EOCD"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 200
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 213
    :cond_6
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    new-instance v45, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v46, v10, 0x16

    sub-int v46, v46, v36

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-direct {v0, v14, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, v45

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v45, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 216
    .local v20, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v37

    .line 217
    .local v37, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v37, :cond_7

    .line 218
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "signedData is null"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 220
    :cond_7
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 221
    .local v13, "encCerts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_8

    .line 222
    new-instance v45, Ljava/io/IOException;

    const-string v46, "encCerts is empty"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 226
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 227
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Certificate;>;"
    const/4 v8, 0x0

    .line 228
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_c

    .line 229
    const-string v45, "X.509"

    invoke-static/range {v45 .. v45}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 230
    .local v9, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v22, Ljava/io/ByteArrayInputStream;

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual/range {v45 .. v45}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v45

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 231
    .local v22, "is":Ljava/io/InputStream;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 236
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v34

    .line 238
    .local v34, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_d

    .line 239
    const/16 v45, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 247
    .local v33, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_9

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v39

    .line 250
    .local v39, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    .line 251
    .local v35, "signatureKey":Ljava/security/PublicKey;
    const/16 v44, 0x0

    .line 252
    .local v44, "verified":Z
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 253
    .local v7, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 254
    const/16 v44, 0x1

    .line 258
    .end local v7    # "c":Ljava/security/cert/X509Certificate;
    :cond_b
    if-nez v44, :cond_e

    .line 259
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature doesn\'t match any trusted key"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 233
    .end local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    .end local v35    # "signatureKey":Ljava/security/PublicKey;
    .end local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v44    # "verified":Z
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_c
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature contains no certificates"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 241
    .restart local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    :cond_d
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "no signer infos!"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 277
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v35    # "signatureKey":Ljava/security/PublicKey;
    .restart local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v44    # "verified":Z
    :cond_e
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, "da":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "dea":Ljava/lang/String;
    const/4 v4, 0x0

    .line 280
    .local v4, "alg":Ljava/lang/String;
    if-eqz v11, :cond_f

    if-nez v12, :cond_13

    .line 283
    :cond_f
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    .line 287
    :goto_1
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v32

    .line 288
    .local v32, "sig":Ljava/security/Signature;
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 292
    int-to-long v0, v10

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    const-wide/16 v48, 0x2

    sub-long v42, v46, v48

    .line 293
    .local v42, "toRead":J
    const-wide/16 v40, 0x0

    .line 294
    .local v40, "soFar":J
    const-wide/16 v46, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 295
    const/16 v45, 0x1000

    move/from16 v0, v45

    new-array v6, v0, [B

    .line 296
    .local v6, "buffer":[B
    const/16 v21, 0x0

    .line 297
    .local v21, "interrupted":Z
    :cond_10
    :goto_2
    cmp-long v45, v40, v42

    if-gez v45, :cond_11

    .line 298
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v21

    .line 299
    if-eqz v21, :cond_14

    .line 319
    :cond_11
    if-eqz p1, :cond_12

    .line 320
    const/16 v45, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 323
    :cond_12
    if-eqz v21, :cond_16

    .line 324
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "verification was interrupted"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 285
    .end local v6    # "buffer":[B
    .end local v21    # "interrupted":Z
    .end local v32    # "sig":Ljava/security/Signature;
    .end local v40    # "soFar":J
    .end local v42    # "toRead":J
    :cond_13
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "with"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 300
    .restart local v6    # "buffer":[B
    .restart local v21    # "interrupted":Z
    .restart local v32    # "sig":Ljava/security/Signature;
    .restart local v40    # "soFar":J
    .restart local v42    # "toRead":J
    :cond_14
    array-length v0, v6

    move/from16 v38, v0

    .line 301
    .local v38, "size":I
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v40

    cmp-long v45, v46, v42

    if-lez v45, :cond_15

    .line 302
    sub-long v46, v42, v40

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v38, v0

    .line 304
    :cond_15
    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v31

    .line 305
    .local v31, "read":I
    const/16 v45, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Ljava/security/Signature;->update([BII)V

    .line 306
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v40, v40, v46

    .line 308
    if-eqz p1, :cond_10

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 310
    .local v28, "now":J
    const-wide/16 v46, 0x64

    mul-long v46, v46, v40

    div-long v46, v46, v42

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v25, v0

    .line 311
    .local v25, "p":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    sub-long v46, v28, v26

    const-wide/16 v48, 0x1f4

    cmp-long v45, v46, v48

    if-lez v45, :cond_10

    .line 313
    move/from16 v24, v25

    .line 314
    move-wide/from16 v26, v28

    .line 315
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    goto/16 :goto_2

    .line 327
    .end local v25    # "p":I
    .end local v28    # "now":J
    .end local v31    # "read":I
    .end local v38    # "size":I
    :cond_16
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v45

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v45

    if-nez v45, :cond_17

    .line 328
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature digest verification failed"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :cond_17
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 333
    return-void
.end method
