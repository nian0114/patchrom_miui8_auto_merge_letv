.class public Lcom/android/server/LeuiLockSettingsServiceHelper;
.super Ljava/lang/Object;
.source "LeuiLockSettingsServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;
    }
.end annotation


# static fields
.field private static final LEUI_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEUI_PATTERN_FILE:Ljava/lang/String; = "pattern.key"

.field public static final LEUI_SHOULD_COUNT_FAILED_TIMES:Z = true

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

.field private mPasswordTryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/LeuiLockSettingsServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "cb"    # Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    iput-object p1, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    return-void
.end method

.method public static computeRetryTimeout(II)I
    .locals 2
    .param p0, "failureCount"    # I
    .param p1, "currentTimeout"    # I

    .prologue
    const/16 v0, 0x7530

    if-lez p1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLeuiPasswordFilename(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "leuiPwdType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getUserParentOrSelfId(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "password.key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLeuiPatternFilename(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "leuiPwdType"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "dataSystemDirectory":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getUserParentOrSelfId(I)I

    move-result p1

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pattern.key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLeuiTryTimes(ILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "leuiPwdType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.password_try_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getPasswordTryTimes(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    const-string v1, "lockscreen.password_try_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getUserParentOrSelfId(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .end local v0    # "pi":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    .end local p1    # "userId":I
    :cond_0
    return p1
.end method

.method private setLeuiTryTimes(IILjava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "tryTimes"    # I
    .param p3, "leuiPwdType"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.password_try_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private setPasswordTryTimes(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "tryTimes"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    const-string v1, "lockscreen.password_try_count"

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :cond_1
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkLeuiPassword(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    invoke-interface {v8, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->checkPasswordReadPermission(I)V

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .local v6, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_0
    invoke-virtual {p0, p3, p2, v6}, Lcom/android/server/LeuiLockSettingsServiceHelper;->checkVeryfyResponseForLeui(Ljava/lang/String;ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    return-object v8

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2, p3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPasswordFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .local v7, "stored":[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v5, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_1

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v2

    .local v2, "hash":[B
    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .local v4, "matched":Z
    if-eqz v4, :cond_2

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    :catch_0
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkLeuiPattern(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    invoke-interface {v8, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->checkPasswordReadPermission(I)V

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .local v6, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_0
    invoke-virtual {p0, p3, p2, v6}, Lcom/android/server/LeuiLockSettingsServiceHelper;->checkVeryfyResponseForLeui(Ljava/lang/String;ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    return-object v8

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2, p3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPatternFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .local v7, "stored":[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v5, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, "got":I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-gtz v1, :cond_1

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v2

    .local v2, "hash":[B
    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .local v4, "matched":Z
    if-eqz v4, :cond_2

    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v1    # "got":I
    .end local v2    # "hash":[B
    .end local v4    # "matched":Z
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    :catch_0
    move-exception v0

    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkVeryfyResponse(ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .prologue
    const-wide/16 v6, 0x0

    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    .local v1, "responseCode":I
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    .local v2, "timeout":I
    invoke-direct {p0, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getPasswordTryTimes(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    iget-object v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, "deadLine":Ljava/lang/Long;
    sget-object v3, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkVeryfyResponse(),mPasswordTryTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deadLine:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    iget v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->setPasswordTryTimes(II)V

    return-object p2

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p2, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    :goto_1
    if-lez v2, :cond_4

    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p2, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    iget v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    invoke-static {v3, v2}, Lcom/android/server/LeuiLockSettingsServiceHelper;->computeRetryTimeout(II)I

    move-result v2

    goto :goto_1
.end method

.method public checkVeryfyResponseForLeui(Ljava/lang/String;ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "leuiPwdType"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .prologue
    const-wide/16 v8, 0x0

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    .local v2, "responseCode":I
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    .local v3, "timeout":I
    invoke-direct {p0, p2, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiTryTimes(ILjava/lang/String;)I

    move-result v1

    .local v1, "mPasswordTryTimes":I
    iget-object v4, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLeuiAttemptDeadline(ILjava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, "deadLine":Ljava/lang/Long;
    sget-object v4, Lcom/android/server/LeuiLockSettingsServiceHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkVeryfyResponse(),mPasswordTryTimes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " responseCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " deadLine:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLeuiAttemptDeadline(IILjava/lang/String;)J

    invoke-direct {p0, p2, v1, p1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->setLeuiTryTimes(IILjava/lang/String;)V

    return-object p3

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    new-instance p3, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p3, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    :goto_1
    if-lez v3, :cond_4

    new-instance p3, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p3, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->computeRetryTimeout(II)I

    move-result v3

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mPasswordTryTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mPasswordTryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getPasswordTryTimes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getPasswordTryTimes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deadLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    const-string v3, "lockscreen.lockoutattemptdeadline"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v2, v3, v5, v4}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->LEUI_PWD_TYPES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->LEUI_PWD_TYPES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    getLeuiTryTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->LEUI_PWD_TYPES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiTryTimes(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deadLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->LEUI_PWD_TYPES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "attemptdeadline"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v3, v1, v5, v4}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public haveLeuiPassword(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPasswordFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveLeuiPattern(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPatternFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeuiPassword(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    invoke-interface {v0, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->checkWritePermission(I)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPasswordFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LeuiLockSettingsServiceHelper;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public setLeuiPattern(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "leuiPwdType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/LeuiLockSettingsServiceHelper;->mLockSettingsServiceCallback:Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;

    invoke-interface {v1, p2}, Lcom/android/server/LeuiLockSettingsServiceHelper$LockSettingsServiceCallback;->checkWritePermission(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .local v0, "hash":[B
    invoke-direct {p0, p2, p3}, Lcom/android/server/LeuiLockSettingsServiceHelper;->getLeuiPatternFilename(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/LeuiLockSettingsServiceHelper;->writeFile(Ljava/lang/String;[B)V

    return-void
.end method
