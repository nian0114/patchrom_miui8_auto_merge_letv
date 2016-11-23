.class public Landroid/content/res/theme/LeThemeManager;
.super Ljava/lang/Object;
.source "LeThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/theme/LeThemeManager$FileFilterTest;
    }
.end annotation


# static fields
.field public static final CHANGE_FONT_ACTION:Ljava/lang/String; = "change.font.action"

.field public static final CHANGE_THEME_ACTION:Ljava/lang/String; = "change.theme.action"

.field private static final CHANGE_THEME_COMPLETE:I = 0x3

.field public static final CHANGE_THEME_COMPLETE_TEXT:Ljava/lang/String; = "changeThemeComplete"

.field public static final DEFALT_LOCK_WALLPAPER:Ljava/lang/String; = "default_lock_wallpaper"

.field public static final DEFALT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final INTENT_EXTRA_TEXT:Ljava/lang/String; = "extra_Text"

.field public static final SET_FONT_FAIL_TEXT:Ljava/lang/String; = "setFontFail"

.field public static final SET_FONT_SUCCESS_TEXT:Ljava/lang/String; = "setFontSuccess"

.field private static final SET_WALLPAPER_FAIL:I = 0x2

.field public static final SET_WALLPAPER_FAIL_TEXT:Ljava/lang/String; = "setWallpaperFail"

.field public static final SYSTEM_PROPERTY_THEME_VALUE:Ljava/lang/String; = "theme_value"

.field private static final TAG:Ljava/lang/String; = "LeThemeManager"

.field public static final TARGET_THEME_RES_DATA_PATH:Ljava/lang/String; = "/data/"

.field public static final TARGET_WALL_PAPER_RES_PATH:Ljava/lang/String; = "/data/letvTheme/wallpaper"

.field public static final TARGET_WALL_PAPER_RES_PATH_1:Ljava/lang/String; = "/data/letvTheme1/wallpaper"

.field public static final THEME_FILE_NAME:Ljava/lang/String; = "letvTheme"

.field public static final THEME_FILE_NAME_1:Ljava/lang/String; = "letvTheme1"

.field public static final THEME_FILE_PATH:Ljava/lang/String; = "/data/letvTheme"

.field public static final THEME_FILE_PATH_1:Ljava/lang/String; = "/data/letvTheme1"

.field public static final THEME_ID:Ljava/lang/String; = "theme_id"

.field public static final THEME_RES_DATA_PATH:Ljava/lang/String; = "/system/etc/"

.field public static final UN_THEMEZIP_FAIL:I = 0x1

.field public static final UN_THEME_ZIP_FAIL_TEXT:Ljava/lang/String; = "unThemeZipFail"

.field private static mThemeManager:Landroid/content/res/theme/LeThemeManager;

.field public static mThemeZips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private reNameLetvThemeFileFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeZips:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeManager;->mCurConfig:Landroid/content/res/Configuration;

    .line 40
    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 48
    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 66
    iput-object p1, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/content/res/theme/LeThemeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/LeThemeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    .line 62
    :cond_0
    sget-object v0, Landroid/content/res/theme/LeThemeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    return-object v0
.end method

.method public static getLocalThemeZipList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, "localThemeZipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v7, "/system/etc/"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 110
    :cond_0
    new-instance v2, Landroid/content/res/theme/LeThemeManager$FileFilterTest;

    const-string v7, ".zip"

    invoke-direct {v2, v7}, Landroid/content/res/theme/LeThemeManager$FileFilterTest;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "fileFilter":Landroid/content/res/theme/LeThemeManager$FileFilterTest;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 112
    .local v6, "zipfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v6    # "zipfile":Ljava/io/File;
    :cond_1
    return-object v5
.end method

.method public static getThemeZips()V
    .locals 7

    .prologue
    .line 94
    new-instance v1, Ljava/io/File;

    const-string v6, "/system/etc/"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 98
    :cond_0
    new-instance v2, Landroid/content/res/theme/LeThemeManager$FileFilterTest;

    const-string v6, ".zip"

    invoke-direct {v2, v6}, Landroid/content/res/theme/LeThemeManager$FileFilterTest;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "fileFilter":Landroid/content/res/theme/LeThemeManager$FileFilterTest;
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 100
    .local v5, "zipfile":Ljava/io/File;
    sget-object v6, Landroid/content/res/theme/LeThemeManager;->mThemeZips:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v5    # "zipfile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 10
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "whichWallpaper"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 273
    :cond_0
    const/4 v4, 0x0

    .line 288
    :goto_0
    return-object v4

    .line 275
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v7, v0, v3

    .line 276
    .local v7, "tempFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    .end local v7    # "tempFile":Ljava/io/File;
    :cond_3
    const/4 v4, 0x0

    .line 283
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 287
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDirPermissions(Ljava/io/File;)V
    .locals 8
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x1

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 179
    new-instance v5, Landroid/content/res/theme/LeThemeManager$1;

    invoke-direct {v5, p0}, Landroid/content/res/theme/LeThemeManager$1;-><init>(Landroid/content/res/theme/LeThemeManager;)V

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 185
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 186
    .local v1, "f":Ljava/io/File;
    const-string v5, "ThemeSetPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dir is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0, v1}, Landroid/content/res/theme/LeThemeManager;->setDirPermissions(Ljava/io/File;)V

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method


# virtual methods
.method public UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "zipFileString"    # Ljava/lang/String;
    .param p2, "outPathString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v6, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v11, ""

    .line 137
    .local v11, "szName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string v14, "/data/letvTheme1"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, "letvThemeFile1":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v14, "/data/letvTheme"

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v8, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 140
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    .local v13, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_5

    .line 143
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, " "

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 144
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-nez v14, :cond_1

    .line 145
    if-eqz v11, :cond_1

    const-string/jumbo v14, "letvTheme"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 146
    const-string/jumbo v14, "letvTheme"

    const-string/jumbo v15, "letvTheme1"

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "szNameNew":Ljava/lang/String;
    move-object v11, v12

    .line 150
    .end local v12    # "szNameNew":Ljava/lang/String;
    :cond_1
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 151
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 152
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 155
    .end local v5    # "folder":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v10, "out":Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 163
    .local v2, "buffer":[B
    :goto_1
    invoke-virtual {v6, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v14, -0x1

    if-eq v7, v14, :cond_4

    .line 164
    const/4 v14, 0x0

    invoke-virtual {v10, v2, v14, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 165
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 169
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1ff

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_0

    .line 172
    .end local v2    # "buffer":[B
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v10    # "out":Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    .line 174
    new-instance v14, Ljava/io/File;

    const-string v15, "/data/letvTheme1"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/content/res/theme/LeThemeManager;->setDirPermissions(Ljava/io/File;)V

    .line 175
    return-void
.end method

.method public deleteDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    :cond_1
    :goto_0
    return v3

    .line 234
    :cond_2
    iput-boolean v4, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 236
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 237
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 238
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 239
    iget-boolean v5, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-nez v5, :cond_5

    .line 247
    :cond_3
    iget-boolean v5, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-eqz v5, :cond_1

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 250
    goto :goto_0

    .line 242
    :cond_4
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 243
    iget-boolean v5, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    if-eqz v5, :cond_3

    .line 236
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 223
    :cond_0
    iget-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    return v1
.end method

.method public deleteThemeFile1(Ljava/lang/String;)Z
    .locals 2
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-boolean v1, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    .line 383
    :goto_0
    return v1

    .line 380
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public deleteThemeRes(Ljava/lang/String;)Z
    .locals 10
    .param p1, "targetFilePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 193
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/letvTheme1"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v2, "letvThemeFile1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/letvTheme"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "letvThemeFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    :cond_1
    :goto_0
    return v3

    .line 198
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    .line 199
    iget-boolean v4, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-eqz v4, :cond_4

    .line 200
    const-string p1, "/data/letvTheme1"

    .line 201
    iget-boolean v4, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->reNameLetvThemeFileFail:Z

    .line 204
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 206
    iget-boolean v3, p0, Landroid/content/res/theme/LeThemeManager;->flag:Z

    goto :goto_0

    .line 208
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 211
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/res/theme/LeThemeManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public reNameLetvTheme1ToLetvTheme()V
    .locals 6

    .prologue
    .line 292
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/letvTheme1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "letvTheme1File":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 294
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/letvTheme"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 296
    :cond_0
    return-void
.end method

.method public sendChangeFontBroadCast(Ljava/lang/String;)V
    .locals 2
    .param p1, "extraText"    # Ljava/lang/String;

    .prologue
    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_Text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "change.font.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public sendChangeThemeBroadCast(ILjava/lang/String;)V
    .locals 3
    .param p1, "flag"    # I
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, ""

    .line 361
    .local v0, "extraText":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 362
    const-string/jumbo v0, "setWallpaperFail"

    .line 368
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_Text"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v2, "theme_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v2, "change.theme.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v2, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    return-void

    .line 363
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 364
    const-string v0, "changeThemeComplete"

    goto :goto_0

    .line 365
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 366
    const-string/jumbo v0, "unThemeZipFail"

    goto :goto_0
.end method

.method public setFontValues(Ljava/lang/String;I)I
    .locals 9
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "fontId"    # I

    .prologue
    const/4 v6, -0x1

    .line 415
    const/4 v4, 0x0

    .line 417
    .local v4, "result":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/euifonts/"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "dir":Ljava/io/File;
    if-ne p2, v6, :cond_1

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 435
    :cond_0
    :goto_0
    const/4 v4, 0x1

    .line 436
    invoke-virtual {p0, p2}, Landroid/content/res/theme/LeThemeManager;->updateConfiguration(I)V

    .line 437
    const-string/jumbo v5, "setFontSuccess"

    invoke-virtual {p0, v5}, Landroid/content/res/theme/LeThemeManager;->sendChangeFontBroadCast(Ljava/lang/String;)V

    .line 438
    const-string v5, "changeFont"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FontPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v1    # "dir":Ljava/io/File;
    :goto_1
    return v4

    .line 423
    .restart local v1    # "dir":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 425
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 427
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v5, "euifont.ttf"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 429
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 431
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v3, "file":Ljava/io/File;
    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    const-string v5, "changeFont"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " change font failed, FontPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string/jumbo v5, "setFontFail"

    invoke-virtual {p0, v5}, Landroid/content/res/theme/LeThemeManager;->sendChangeFontBroadCast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setWallpaper(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "isLockWallpaper"    # Z

    .prologue
    .line 300
    :try_start_0
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SET_WALLPAPER"

    const-string/jumbo v10, "themeManagerSetWallpaper"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    const-string v3, ""

    .line 306
    .local v3, "tempWallpaperFilePath":Ljava/lang/String;
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v8}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 307
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "2k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "wallpaperFilePath_2k":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 310
    move-object v3, v6

    .line 318
    .end local v4    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "wallpaperFilePath_2k":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 319
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 320
    move-object v3, p1

    .line 323
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 357
    :cond_2
    :goto_2
    return-void

    .line 302
    .end local v3    # "tempWallpaperFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "tempWallpaperFilePath":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1080p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "wallpaperFilePath_1080p":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 315
    move-object v3, v5

    goto :goto_1

    .line 326
    .end local v5    # "wallpaperFilePath_1080p":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_5

    .line 331
    const-string v8, "default_lock_wallpaper"

    invoke-direct {p0, v3, v8}, Landroid/content/res/theme/LeThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 335
    :goto_3
    if-eqz v2, :cond_2

    .line 336
    iget-object v8, p0, Landroid/content/res/theme/LeThemeManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 338
    .local v7, "wallpaperManager":Landroid/app/WallpaperManager;
    if-eqz p2, :cond_6

    .line 339
    :try_start_1
    invoke-virtual {v7, v2}, Landroid/app/WallpaperManager;->setStreamToLockWallpaper(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_4
    if-eqz v2, :cond_2

    .line 349
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 351
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 333
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v7    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_5
    const-string v8, "default_wallpaper"

    invoke-direct {p0, v3, v8}, Landroid/content/res/theme/LeThemeManager;->getWallpaperIs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    goto :goto_3

    .line 341
    .restart local v7    # "wallpaperManager":Landroid/app/WallpaperManager;
    :cond_6
    :try_start_3
    invoke-virtual {v7, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 343
    :catch_2
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    const/4 v8, 0x2

    const-string v9, "-1"

    invoke-virtual {p0, v8, v9}, Landroid/content/res/theme/LeThemeManager;->sendChangeThemeBroadCast(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    if-eqz v2, :cond_2

    .line 349
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 351
    :catch_3
    move-exception v1

    .line 353
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 348
    if-eqz v2, :cond_7

    .line 349
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 354
    :cond_7
    :goto_5
    throw v8

    .line 351
    :catch_4
    move-exception v1

    .line 353
    .restart local v1    # "e2":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public updateConfiguration(I)V
    .locals 4
    .param p1, "fontId"    # I

    .prologue
    .line 448
    if-eqz p1, :cond_1

    .line 449
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 450
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const p1, 0x7ffffffe

    .end local p1    # "fontId":I
    :cond_0
    iput p1, v0, Landroid/content/res/Configuration;->leGlobalFont:I

    .line 452
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    return-void

    .line 453
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LeThemeManager"

    const-string v3, "Unable to update global font."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
