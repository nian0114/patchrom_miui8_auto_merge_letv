.class public Landroid/content/res/theme/LeThemeUtils;
.super Ljava/lang/Object;
.source "LeThemeUtils.java"


# static fields
.field public static final CALENDAR_ICON:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_ICON_MANIFEST:Ljava/lang/String; = "manifest.xml"

.field public static final CURRENT_THEME_CALENDAR_RES_FILE_PATH:Ljava/lang/String; = "/data/letvTheme/icons/calendar"

.field public static final CURRENT_THEME_ICON_RES_FILE_PATH:Ljava/lang/String; = "/data/letvTheme/icons/"

.field public static final CURRENT_THEME_RES_CALENDAR_TYPE:I = 0x4

.field public static final CURRENT_THEME_RES_ICONS_TYPE:I = 0x1

.field public static final CURRENT_THEME_RES_TEMPLATE_TYPE:I = 0x3

.field public static final CURRENT_THEME_RES_WALLPAPER_TYPE:I = 0x2

.field public static final CURRENT_THEME_TEMPLATE_RES_FILE_PATH:Ljava/lang/String; = "/data/letvTheme/icons/template"

.field public static final CURRENT_THEME_WALLPAPER_RES_FILE_PATH:Ljava/lang/String; = "/data/letvTheme/wallpaper"

.field private static final DEBUG:Z = false

.field public static final DEFALT_LOCK_WALLPAPER:Ljava/lang/String; = "default_lock_wallpaper.png"

.field public static final DEFALT_LOCK_WALLPAPER_JPG:Ljava/lang/String; = "default_lock_wallpaper.jpg"

.field public static final DEFALT_WALLPAPER:Ljava/lang/String; = "default_wallpaper.png"

.field public static final DEFALT_WALLPAPER_JPG:Ljava/lang/String; = "default_wallpaper.jpg"

.field public static final FILE_1080:Ljava/lang/String; = "1080p"

.field public static final FILE_2K:Ljava/lang/String; = "2k"

.field public static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field public static final ICONS_1080p:Ljava/lang/String; = "icons_1080p"

.field public static final ICONS_2k:Ljava/lang/String; = "icons_2k"

.field public static final ICON_1080P_PATH_NAME:Ljava/lang/String; = "icons_1080p"

.field public static final ICON_2K_PATH_NAME:Ljava/lang/String; = "icons_2k"

.field public static final ICON_PATH_NAME:Ljava/lang/String; = "icons"

.field public static final ICON_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JPG:Ljava/lang/String; = ".jpg"

.field private static final MIN_WIDTH_2K:I = 0x7d0

.field public static final PNG:Ljava/lang/String; = ".png"

.field private static final TAG:Ljava/lang/String; = "LeThemeUtils"

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final THEME_COMMON_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_black_common.zip"

.field public static final THEME_CU_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_black_cu.zip"

.field public static final THEME_DATA_PATH:Ljava/lang/String; = "/data/letvTheme/"

.field public static final THEME_DATA_PATH_ONE:Ljava/lang/String; = "/data/letvTheme1/"

.field public static final THEME_DEFAULT_3RD_ICON_PATH:Ljava/lang/String; = "/system/etc/letvTheme_3rd_default/"

.field public static final THEME_DEFAULT_PATH:Ljava/lang/String; = "/system/etc/letvTheme_default.zip"

.field public static final THEME_SYSTEM_PATH:Ljava/lang/String; = "/system/letvTheme/"

.field public static final WALL_PAPER_NAME:Ljava/lang/String; = "wallpaper"

.field private static final WIDTH_2K_SCERRN:I = 0x7d0

.field public static final ZIP:Ljava/lang/String; = ".zip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "zipFileString"    # Ljava/lang/String;
    .param p1, "outPathString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "inZip":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .local v8, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .local v6, "inZip":Ljava/util/zip/ZipInputStream;
    :try_start_1
    const-string v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v10, "szName":Ljava/lang/String;
    move-object v9, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .local v9, "out":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v11

    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .end local v4    # "folder":Ljava/io/File;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v10    # "szName":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    :try_start_6
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v12, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_7
    new-array v1, v12, [B

    .local v1, "buffer":[B
    :goto_4
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .end local v1    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v10    # "szName":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "len":I
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    move-object v9, v8

    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "len":I
    :cond_4
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_5
    if-eqz v9, :cond_8

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v10    # "szName":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_7
    if-eqz v8, :cond_7

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    :goto_8
    throw v12

    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    :catchall_2
    move-exception v12

    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto :goto_6

    .end local v10    # "szName":Ljava/lang/String;
    :catch_8
    move-exception v2

    goto/16 :goto_1

    .end local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_8
    move-object v8, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "inZip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_3
.end method

.method public static getCalendarIconFilePath()Ljava/lang/String;
    .locals 11

    .prologue
    const-string v6, ""

    .local v6, "resRoot":Ljava/lang/String;
    const-string v5, ""

    .local v5, "resPath":Ljava/lang/String;
    const-string v7, ""

    .local v7, "tempPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/letvTheme/"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "dataThemeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "/data/letvTheme/"

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons_2k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "calendarFile2k":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v5, v7

    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons_1080p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "calendarFile1080p":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v5, v7

    .end local v1    # "calendarFile1080p":Ljava/io/File;
    :cond_1
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "icons"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.android.calendar"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "calendarFileComm":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v5, v7

    .end local v3    # "calendarFileComm":Ljava/io/File;
    :cond_2
    :goto_3
    const-string v8, "LeThemeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCalendarIconFilePath is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .end local v2    # "calendarFile2k":Ljava/io/File;
    :cond_3
    const-string v6, "/system/etc/letvTheme_3rd_default/"

    goto/16 :goto_0

    .restart local v2    # "calendarFile2k":Ljava/io/File;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "calendarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    goto/16 :goto_1

    .end local v0    # "calendarFile":Ljava/io/File;
    .restart local v1    # "calendarFile1080p":Ljava/io/File;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "calendarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    goto/16 :goto_2

    .end local v0    # "calendarFile":Ljava/io/File;
    .end local v1    # "calendarFile1080p":Ljava/io/File;
    .restart local v3    # "calendarFileComm":Ljava/io/File;
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "calendarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v7

    goto :goto_3
.end method

.method public static getDefaultThemeZipFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/letvTheme_black_common.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/system/etc/letvTheme_black_common.zip"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/system/etc/letvTheme_black_cu.zip"

    goto :goto_0
.end method

.method public static is2KScreen(Landroid/util/DisplayMetrics;)Z
    .locals 4
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v1, "w":I
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v0, "h":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
