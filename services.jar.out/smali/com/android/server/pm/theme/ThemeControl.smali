.class public Lcom/android/server/pm/theme/ThemeControl;
.super Ljava/lang/Object;
.source "ThemeControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/theme/ThemeControl$Upzip;,
        Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;
    }
.end annotation


# static fields
.field public static final PERSIST_CURRENT_THEME:Ljava/lang/String; = "persist.sys.currenttheme"

.field public static final PERSIST_DEFAULT_THEME:Ljava/lang/String; = "persist.sys.defaultttheme"

.field private static final TAG:Ljava/lang/String; = "ThemeControl"

.field private static final THEME_FILE_PATH:Ljava/lang/String; = "/data/letvTheme"

.field private static final THEME_FILE_PATH_TEMP:Ljava/lang/String; = "/data/letvTheme1"


# instance fields
.field private final THEME_BASE:I

.field private final UNZIP_THEME_ARCHIVE:I

.field private isFirstBoot:Z

.field private mContext:Landroid/content/Context;

.field private mThemeHandler:Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;

.field private upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "firstboot"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/pm/theme/ThemeControl;->THEME_BASE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/theme/ThemeControl;->UNZIP_THEME_ARCHIVE:I

    new-instance v0, Lcom/android/server/pm/theme/ThemeControl$Upzip;

    invoke-direct {v0, p0}, Lcom/android/server/pm/theme/ThemeControl$Upzip;-><init>(Lcom/android/server/pm/theme/ThemeControl;)V

    iput-object v0, p0, Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;

    iput-boolean v1, p0, Lcom/android/server/pm/theme/ThemeControl;->isFirstBoot:Z

    iput-boolean p2, p0, Lcom/android/server/pm/theme/ThemeControl;->isFirstBoot:Z

    iput-object p1, p0, Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/theme/ThemeControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/theme/ThemeControl;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/theme/ThemeControl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/theme/ThemeControl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/theme/ThemeControl;->handleZipFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/theme/ThemeControl;)Lcom/android/server/pm/theme/ThemeControl$Upzip;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/theme/ThemeControl;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;

    return-object v0
.end method

.method private handleZipFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themename"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "callingUid":I
    if-eqz v2, :cond_1

    const/16 v7, 0x3e8

    if-eq v2, v7, :cond_1

    const-string v7, "ThemeControl"

    const-string v8, "ControlTheme handleZipFile Uid is not SYSTEM"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ThemeControl"

    const-string v8, "ControlTheme handleZipFile themename is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "ThemeControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ControlTheme handleZipFile themename is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/data/letvTheme"

    .local v1, "THEME_FILE_PATH":Ljava/lang/String;
    const-string v0, "/data/"

    .local v0, "TARGET_THEME_RES_DATA_PATH":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/etc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "targetFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "targetFile":Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    const-string v7, "ThemeControl"

    const-string v8, "ControlTheme handleZipFile targetFile is null || targetFile is not exists"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/content/res/theme/LeThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Landroid/content/res/theme/LeThemeManager;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/content/res/theme/LeThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/theme/LeThemeManager;->deleteThemeRes(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/pm/theme/ThemeControl;->reNameLetvThemeTempToLetvTheme()V

    iget-boolean v7, p0, Lcom/android/server/pm/theme/ThemeControl;->isFirstBoot:Z

    if-eqz v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ThemeControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ControlTheme handleZipFile set PERSIST_CURRENT_THEME : themename is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persist.sys.currenttheme"

    invoke-static {v7, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "ThemeControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ControlTheme handleZipFile deleteThemeRes Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ThemeControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ControlTheme handleZipFile UnZipFolder Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/content/res/theme/LeThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;

    move-result-object v7

    const-string v8, "/data/letvTheme1"

    invoke-virtual {v7, v8}, Landroid/content/res/theme/LeThemeManager;->deleteThemeFile1(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .local v4, "ed":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ThemeControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ControlTheme handleZipFile deleteThemeFile1 Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ed":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string v7, "ThemeControl"

    const-string v8, "ControlTheme handleZipFile set PERSIST_CURRENT_THEME : themename is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private reNameLetvThemeTempToLetvTheme()V
    .locals 6

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "letvThemeFileTemp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/letvTheme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefThemePathName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "defThemePathName":Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getVendorName()Ljava/lang/String;

    move-result-object v1

    .local v1, "vendorName":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "whole-netcom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "letvTheme_black_common.zip"

    :cond_1
    :goto_0
    const-string v2, "ThemeControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefThemePathName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const-string v2, "china-mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "letvTheme_black_cmcc.zip"

    goto :goto_0

    :cond_3
    const-string v2, "china-telecom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "letvTheme_black_ct.zip"

    goto :goto_0

    :cond_4
    const-string v2, "china-unicom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "letvTheme_black_cu.zip"

    goto :goto_0

    :cond_5
    const-string v2, "oversea"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "hongkong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "india"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "thailand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    const-string v0, "letvTheme_black_oversea.zip"

    goto :goto_0
.end method

.method public handleThemeZip(Ljava/lang/String;)V
    .locals 5
    .param p1, "themeName"    # Ljava/lang/String;

    .prologue
    const-string v3, "ThemeControl"

    const-string v4, "ControlTheme start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ThemeControl"

    const-string v4, "ControlTheme : themeName is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "ThemeUpzip"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "mWorkLooper":Landroid/os/Looper;
    new-instance v3, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;

    invoke-direct {v3, p0, v0}, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;-><init>(Lcom/android/server/pm/theme/ThemeControl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->mThemeHandler:Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;

    iget-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->mThemeHandler:Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .local v2, "unzipTheme":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->mThemeHandler:Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/pm/theme/ThemeControl$Upzip;

    invoke-direct {v3, p0}, Lcom/android/server/pm/theme/ThemeControl$Upzip;-><init>(Lcom/android/server/pm/theme/ThemeControl;)V

    iput-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;

    invoke-virtual {v3}, Lcom/android/server/pm/theme/ThemeControl$Upzip;->upzipSetup()V

    const-string v3, "ThemeControl"

    const-string v4, "ControlTheme : end "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
