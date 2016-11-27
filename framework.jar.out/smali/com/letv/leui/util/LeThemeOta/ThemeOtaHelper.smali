.class public Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;
.super Ljava/lang/Object;
.source "ThemeOtaHelper.java"


# static fields
.field public static final PERSIST_CURRENT_THEME_ZIP_NAME:Ljava/lang/String; = "persist.sys.currenttheme"

.field public static final PERSIST_THEME_BACKUP_FLAG:Ljava/lang/String; = "persist.sys.themebackupflag"

.field public static final SYSTEM_ETC_SRC:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final THEME_FILE:Ljava/io/File;

.field public static final THEME_FILE_NAME:Ljava/lang/String; = "letvTheme"

.field public static final THEME_FILE_NAME_1:Ljava/lang/String; = "letvTheme1"

.field public static final THEME_FILE_PATH:Ljava/lang/String; = "/data/letvTheme"

.field public static final THEME_FILE_PATH_TEMP:Ljava/lang/String; = "/data/letvTheme1"

.field public static final THEME_TEMP_FILE:Ljava/io/File;

.field private static flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_FILE:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->SYSTEM_ETC_SRC:Ljava/io/File;

    const-class v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v6, ""

    .local v6, "szName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v9, "letvTheme"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "letvTheme"

    const-string v10, "letvTheme1"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "szNameNew":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "szNameNew":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ff

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .end local v2    # "folder":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ff

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .end local v0    # "buffer":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    sput-boolean v4, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-nez v5, :cond_5

    :cond_3
    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_4
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteDirectory(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-eqz v5, :cond_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    :cond_0
    sget-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    return v1
.end method

.method public static deleteThemeRes(Ljava/lang/String;)Z
    .locals 2
    .param p0, "targetFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static doSomeOthers()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->restThemeBackupFlag()V

    return-void
.end method

.method public static ota()V
    .locals 6

    .prologue
    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->doSomeOthers()V

    const-string v3, "persist.sys.currenttheme"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "currentZipName":Ljava/lang/String;
    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_currentZipName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->parserDefaultThemeFromSystemEtcConfigFile()Ljava/lang/String;

    move-result-object v0

    const-string v3, "persist.sys.currenttheme"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse_currentZipName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->SYSTEM_ETC_SRC:Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;

    invoke-direct {v2}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;-><init>()V

    .local v2, "otaAction":Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;
    iput-object v0, v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->replaceThemeFile(Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;)Z

    .end local v2    # "otaAction":Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;
    :cond_1
    return-void
.end method

.method public static parserDefaultThemeFromSystemEtcConfigFile()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v4, 0x0

    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .local v1, "defaultTheme":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/"

    const-string v10, "themeConfig.json"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v7, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v6, "jsThemeConfig":Lorg/json/JSONObject;
    const-string v8, "defaultTheme"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v1

    .end local v0    # "buffer":[B
    .end local v1    # "defaultTheme":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v7    # "json":Ljava/lang/String;
    .local v2, "defaultTheme":Ljava/lang/String;
    :goto_1
    return-object v2

    .end local v2    # "defaultTheme":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .restart local v7    # "json":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v7    # "json":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    move-object v2, v1

    .end local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v2    # "defaultTheme":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "defaultTheme":Ljava/lang/String;
    .restart local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    throw v8

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static replaceThemeFile(Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;)Z
    .locals 6
    .param p0, "otaAction"    # Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;

    .prologue
    const/4 v2, 0x0

    .local v2, "replace":Z
    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceThemeFile  name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->path:Ljava/lang/String;

    const-string v4, "/data/"

    invoke-static {v3, v4}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "/data/letvTheme"

    invoke-static {v3}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteThemeRes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    sget-object v4, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .local v1, "isRenameOk":Z
    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v1    # "isRenameOk":Z
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/data/letvTheme1"

    invoke-static {v3}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteThemeRes(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static restThemeBackupFlag()V
    .locals 2

    .prologue
    const-string v0, "persist.sys.themebackupflag"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
