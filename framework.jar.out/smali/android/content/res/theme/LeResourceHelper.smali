.class public Landroid/content/res/theme/LeResourceHelper;
.super Ljava/lang/Object;
.source "LeResourceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Landroid/content/res/theme/LeResourceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/LeResourceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipDrawableIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "resDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, "clipDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 73
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 74
    .local v0, "appIcon":I
    if-ne p0, v0, :cond_0

    if-eqz p3, :cond_0

    .line 75
    invoke-static {p3, p2}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 78
    .end local v0    # "appIcon":I
    :cond_0
    return-object v1
.end method

.method public static getClipIcon(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 62
    invoke-static {p0, p1}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    .local v0, "clipDrawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getLetvThemeResDrawable(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "letvResDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 23
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 24
    .local v0, "appIcon":I
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 28
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.android.cts.widget"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const/4 v3, 0x0

    .line 42
    .end local v0    # "appIcon":I
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 32
    .restart local v0    # "appIcon":I
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    if-ne p0, v0, :cond_2

    .line 33
    const-string v3, "com.letv.app.appstore"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    sget-object v3, Landroid/content/res/theme/LeResourceHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "resId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>info.icon is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 38
    invoke-static {v2, p2}, Landroid/content/res/theme/LeIconCustomHelper;->getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v0    # "appIcon":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    move-object v3, v1

    .line 42
    goto :goto_0
.end method

.method public static getReplaceText(Landroid/content/res/Resources;Landroid/content/pm/ApplicationInfo;I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "id"    # I

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, "mapRes":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-ne p2, v2, :cond_1

    .line 85
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.BaiduMap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040623

    const-string v4, "Map"

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 102
    :goto_0
    return-object v2

    .line 91
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.map.location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040624

    const-string v4, "Network Location"

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 94
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    move-object v2, v1

    .line 102
    goto :goto_0
.end method

.method private static haveThemeTemplateFile(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/content/res/theme/LeIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isNeedClipIcon(ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "resId"    # I
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 50
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "com.android.cts.widget"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 54
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne p0, v2, :cond_0

    invoke-static {p2}, Landroid/content/res/theme/LeResourceHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static replaceDefaultWallpaper(Ljava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/FileInputStream;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 106
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

    .line 107
    :cond_0
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "wallPaperPath":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, "wallPaperName":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 110
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    aget-object v3, v4, v7

    .line 113
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

    .line 114
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

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v5, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    const/4 v1, 0x0

    .line 119
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

    .line 129
    .end local v2    # "iStream":Ljava/io/FileInputStream;
    .end local v3    # "wallPaperName":Ljava/lang/String;
    .end local v4    # "wallPaperPath":[Ljava/lang/String;
    .end local v5    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 120
    .restart local v1    # "iStream":Ljava/io/FileInputStream;
    .restart local v3    # "wallPaperName":Ljava/lang/String;
    .restart local v4    # "wallPaperPath":[Ljava/lang/String;
    .restart local v5    # "wallpaperFile":Ljava/io/File;
    .restart local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "iStream":Ljava/io/FileInputStream;
    .end local v5    # "wallpaperFile":Ljava/io/File;
    .end local v6    # "wallpaperFileFilePath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "wallPaperName":Ljava/lang/String;
    .end local v4    # "wallPaperPath":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
