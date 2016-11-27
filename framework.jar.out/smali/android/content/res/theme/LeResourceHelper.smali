.class public Landroid/content/res/theme/LeResourceHelper;
.super Ljava/lang/Object;
.source "LeResourceHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Landroid/content/res/theme/LeResourceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/theme/LeResourceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getClipDrawableIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "clipDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 58
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 59
    .local v0, "appIcon":I
    if-ne p0, v0, :cond_0

    if-eqz p3, :cond_0

    .line 60
    invoke-static {p3, p2}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    .end local v0    # "appIcon":I
    :cond_0
    return-object v1
.end method

.method public static getClipIcon(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    .local v0, "clipDrawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getLetvThemeResDrawable(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "letvResDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 23
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 24
    .local v0, "appIcon":I
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 26
    .local v2, "packageName":Ljava/lang/String;
    if-ne p0, v0, :cond_0

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-static {v2, p2}, Landroid/content/res/theme/LeIconCustomHelper;->getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 33
    .end local v0    # "appIcon":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getReplaceText(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "id"    # I

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "mapRes":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-ne p2, v2, :cond_1

    .line 70
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.BaiduMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040621

    const-string v4, "Map"

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 87
    :goto_0
    return-object v2

    .line 76
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.map.location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040622

    const-string v4, "Network Location"

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 79
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    move-object v2, v1

    .line 87
    goto :goto_0
.end method

.method private static haveThemeTemplateFile(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 52
    invoke-static {p0}, Landroid/content/res/theme/LeIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isNeedClipIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p0, v0, :cond_0

    invoke-static {p2}, Landroid/content/res/theme/LeResourceHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceDefaultWallpaper(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/FileInputStream;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "default_lock_wallpaper.jpg"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "default_lock_wallpaper.png"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "default_wallpaper.jpg"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "default_wallpaper.png"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    :cond_0
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "wallPaperPath":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 94
    .local v3, "wallPaperName":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 95
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v3, v4, v7

    .line 98
    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    invoke-static {v8, p1}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "wallpaperFileFilePath":Ljava/lang/String;
    const-string/jumbo v7, "replaceDefaultWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaperFileFilePath is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v5, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "iStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "iStream":Ljava/io/FileInputStream;
    .local v2, "iStream":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 114
    .end local v2    # "iStream":Ljava/io/FileInputStream;
    .end local v3    # "wallPaperName":Ljava/lang/String;
    .end local v4    # "wallPaperPath":[Ljava/lang/String;
    .end local v5    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 105
    .restart local v1    # "iStream":Ljava/io/FileInputStream;
    .restart local v3    # "wallPaperName":Ljava/lang/String;
    .restart local v4    # "wallPaperPath":[Ljava/lang/String;
    .restart local v5    # "wallpaperFile":Ljava/io/File;
    .restart local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "iStream":Ljava/io/FileInputStream;
    .end local v5    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "wallPaperName":Ljava/lang/String;
    .end local v4    # "wallPaperPath":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
