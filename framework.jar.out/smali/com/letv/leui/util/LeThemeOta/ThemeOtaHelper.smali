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
    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_FILE:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->SYSTEM_ETC_SRC:Ljava/io/File;

    .line 31
    const-class v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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
    .line 104
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v6, ""

    .line 107
    .local v6, "szName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_3

    .line 108
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    if-eqz v6, :cond_0

    const-string v9, "letvTheme"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 110
    const-string v9, "letvTheme"

    const-string v10, "letvTheme1"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "szNameNew":Ljava/lang/String;
    move-object v6, v7

    .line 113
    .end local v7    # "szNameNew":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 115
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

    .line 116
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ff

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 119
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

    .line 120
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1ff

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 122
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 125
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    .line 126
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 127
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "buffer":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    .line 133
    return-void
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    :cond_1
    :goto_0
    return v3

    .line 167
    :cond_2
    sput-boolean v4, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 169
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 170
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 171
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 172
    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-nez v5, :cond_5

    .line 180
    :cond_3
    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 183
    goto :goto_0

    .line 175
    :cond_4
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteDirectory(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 176
    sget-boolean v5, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    if-eqz v5, :cond_3

    .line 169
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sPath"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v1, 0x0

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    const/4 v1, 0x1

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 156
    :cond_0
    sget-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    return v1
.end method

.method public static deleteThemeRes(Ljava/lang/String;)Z
    .locals 2
    .param p0, "targetFilePath"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    sput-boolean v1, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->flag:Z

    .line 137
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-static {p0}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p0}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static doSomeOthers()V
    .locals 0

    .prologue
    .line 51
    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->restThemeBackupFlag()V

    .line 52
    return-void
.end method

.method public static ota()V
    .locals 6

    .prologue
    .line 33
    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->doSomeOthers()V

    .line 34
    const-string v3, "persist.sys.currenttheme"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
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

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->parserDefaultThemeFromSystemEtcConfigFile()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v3, "persist.sys.currenttheme"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
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

    .line 41
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->SYSTEM_ETC_SRC:Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    new-instance v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;

    invoke-direct {v2}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;-><init>()V

    .line 44
    .local v2, "otaAction":Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;
    iput-object v0, v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->name:Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->path:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->replaceThemeFile(Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;)Z

    .line 48
    .end local v2    # "otaAction":Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;
    :cond_1
    return-void
.end method

.method public static parserDefaultThemeFromSystemEtcConfigFile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 59
    const/4 v4, 0x0

    .line 60
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 62
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

    .line 63
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 64
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 65
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 66
    .local v7, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v6, "jsThemeConfig":Lorg/json/JSONObject;
    const-string v8, "defaultTheme"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 72
    if-eqz v5, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v1

    .line 80
    .end local v0    # "buffer":[B
    .end local v1    # "defaultTheme":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v7    # "json":Ljava/lang/String;
    .local v2, "defaultTheme":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 75
    .end local v2    # "defaultTheme":Ljava/lang/String;
    .restart local v0    # "buffer":[B
    .restart local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .restart local v7    # "json":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v7    # "json":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 70
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    if-eqz v4, :cond_1

    .line 74
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    move-object v2, v1

    .line 80
    .end local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v2    # "defaultTheme":Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v2    # "defaultTheme":Ljava/lang/String;
    .restart local v1    # "defaultTheme":Ljava/lang/String;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 76
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v4, :cond_2

    .line 74
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    :cond_2
    :goto_5
    throw v8

    .line 75
    :catch_3
    move-exception v3

    .line 76
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 69
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
    .line 84
    const/4 v2, 0x0

    .line 85
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

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/util/LeThemeOta/ThemeOtaAction;->path:Ljava/lang/String;

    const-string v4, "/data/"

    invoke-static {v3, v4}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "/data/letvTheme"

    invoke-static {v3}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteThemeRes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    sget-object v4, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 90
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

    .line 91
    const/4 v2, 0x1

    .line 100
    .end local v1    # "isRenameOk":Z
    :cond_0
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    sget-object v3, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->THEME_TEMP_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const-string v3, "/data/letvTheme1"

    invoke-static {v3}, Lcom/letv/leui/util/LeThemeOta/ThemeOtaHelper;->deleteThemeRes(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static restThemeBackupFlag()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "persist.sys.themebackupflag"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
