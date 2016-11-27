.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field private static final DEFAULT_SIZE:I = 0x32

.field private static final DIR_WALLPAPER_HISTORY:Ljava/lang/String; = ".CacheOfEUI/image/WallpaperHistory"

.field public static final EXTRA_IS_LIVE_WALLPAPER:Ljava/lang/String; = "is_live_wallpaper"

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static final HEX_DIGITS:[C

.field public static final LOCK_VIDEO_CENTER_CROP:I = 0x1

.field public static final LOCK_VIDEO_CENTER_INSIDE:I = 0x2

.field private static final LOCK_WALLPAPER_CATEGORY_KEY:Ljava/lang/String; = "category"

.field private static final LOCK_WALLPAPER_CATEGORY_PREFERENCES:Ljava/lang/String; = "lockWallpaperCategory"

.field public static final LOCK_WALLPAPER_IMAGE:I = 0x1

.field private static final LOCK_WALLPAPER_SCLAE_KEY:Ljava/lang/String; = "scaleType"

.field public static final LOCK_WALLPAPER_VIDEO:I = 0x2

.field private static final NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static SCREEN_H:I = 0x0

.field private static SCREEN_W:I = 0x0

.field private static final SUFFIX_JPG:Ljava/lang/String; = ".jpg"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final PATH_WALLPAPER_HISTORY:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mLockWallpaperXStep:F

.field private mLockWallpaperYStep:F

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 87
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 88
    sput-boolean v2, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 93
    sput v1, Landroid/app/WallpaperManager;->SCREEN_W:I

    .line 94
    sput v1, Landroid/app/WallpaperManager;->SCREEN_H:I

    .line 590
    new-array v0, v2, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 1127
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 90
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 91
    iput v0, p0, Landroid/app/WallpaperManager;->mLockWallpaperXStep:F

    .line 92
    iput v0, p0, Landroid/app/WallpaperManager;->mLockWallpaperYStep:F

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".CacheOfEUI/image/WallpaperHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    .line 602
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 604
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ljava/io/File;)I
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->checkFileMd5(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static checkFileMd5(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .prologue
    .line 1322
    invoke-static {p0}, Landroid/app/WallpaperManager;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/WallpaperManager;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkHistory(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1268
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->checkRepeat(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1269
    .local v0, "repetitionFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-direct {p0}, Landroid/app/WallpaperManager;->checkHistorySize()V

    goto :goto_0
.end method

.method private checkHistorySize()V
    .locals 4

    .prologue
    .line 1361
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v0

    .line 1362
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1363
    array-length v2, v0

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 1364
    invoke-static {v0}, Landroid/app/WallpaperManager;->getLeastRecentlyFile([Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1365
    .local v1, "leastFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1368
    .end local v1    # "leastFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static checkOrMkDir(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirStr"    # Ljava/lang/String;

    .prologue
    .line 1243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    const/4 v1, 0x1

    .line 1251
    :cond_0
    :goto_0
    return v1

    .line 1247
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1248
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1249
    invoke-static {v0}, Landroid/app/WallpaperManager;->createNoMedia(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private checkRepeat(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 1278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-object v4

    .line 1281
    :cond_1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I

    move-result v3

    .line 1282
    .local v3, "size":I
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v0, "checkDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1284
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1285
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Landroid/app/WallpaperManager$3;

    invoke-direct {v5, p0, v2, v3, p1}, Landroid/app/WallpaperManager$3;-><init>(Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1299
    .local v1, "files":[Ljava/io/File;
    array-length v5, v1

    if-lez v5, :cond_0

    .line 1300
    const/4 v4, 0x0

    aget-object v4, v1, v4

    goto :goto_0
.end method

.method private static createNoMedia(Ljava/io/File;)Z
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 1257
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1259
    .local v1, "noMedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1263
    :goto_0
    return v2

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1263
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 533
    if-nez p1, :cond_1

    move-object p1, v5

    .line 586
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 537
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 538
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 539
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 540
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 542
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    .line 549
    :cond_2
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 550
    .local v5, "newbm":Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 552
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 553
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 554
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 555
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 557
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 558
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 560
    .local v1, "deltah":I
    if-gtz v2, :cond_3

    if-lez v1, :cond_4

    .line 563
    :cond_3
    if-le v2, v1, :cond_5

    .line 564
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 568
    .local v7, "scale":F
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 569
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 570
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 571
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 574
    .end local v7    # "scale":F
    :cond_4
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 576
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 577
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 578
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 579
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 582
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 583
    goto/16 :goto_0

    .line 566
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_1

    .line 584
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v5    # "newbm":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 585
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    sget-object v10, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1787
    const-string/jumbo v2, "ro.config.wallpaper_component"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1788
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1789
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1790
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 1803
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-object v0

    .line 1795
    :cond_1
    const v2, 0x1040023

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1796
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1797
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1798
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1803
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFileLength(Ljava/io/File;)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1308
    const/4 v2, 0x0

    .line 1309
    .local v2, "lenth":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1310
    const/4 v0, 0x0

    .line 1312
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1313
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1317
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 1314
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1327
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1329
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1330
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1331
    .local v3, "inputStream":Ljava/io/InputStream;
    const/16 v5, 0x2800

    new-array v0, v5, [B

    .line 1333
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1334
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1338
    .end local v0    # "buff":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 1339
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1346
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    const-string v5, ""

    :goto_2
    return-object v5

    .line 1336
    .restart local v0    # "buff":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1337
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_2

    .line 1340
    .end local v0    # "buff":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "len":I
    :catch_1
    move-exception v2

    .line 1341
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1342
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 1343
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getLeastRecentlyFile([Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    .line 1375
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 1376
    .local v8, "timeLeastRecently":J
    aget-object v2, p0, v10

    .line 1377
    .local v2, "fileLeastRecently":Ljava/io/File;
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1378
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1379
    .local v6, "time":J
    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 1380
    move-wide v8, v6

    .line 1381
    move-object v2, v1

    .line 1377
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1384
    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "time":J
    :cond_1
    return-object v2
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    const/4 v6, 0x0

    .line 800
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 802
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 803
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 804
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 805
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 806
    .local v2, "cropWidth":F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 807
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 815
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    .line 809
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 810
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 811
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 812
    .local v0, "cropHeight":F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 813
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 594
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 598
    :cond_0
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyLockScreenVideoChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2069
    const-string v0, "android.intent.action.LOCK_WALLPAPER_VIDEO_PATH_CHANGED"

    .line 2070
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2071
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "videoPath"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2073
    return-void
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1765
    const-string/jumbo v2, "ro.config.wallpaper"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1766
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1767
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1768
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1770
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1771
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1776
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method private saveHistory(Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    if-nez p1, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget-object v5, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/WallpaperManager;->checkOrMkDir(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1206
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1207
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    .local v2, "fileNmae":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1210
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 1212
    .local v1, "fileLength":I
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1213
    invoke-static {v4, v3}, Landroid/app/WallpaperManager;->setHistory(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    if-eqz v4, :cond_2

    .line 1216
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1218
    :cond_2
    if-eqz v3, :cond_3

    .line 1219
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1220
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1222
    :cond_3
    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 1223
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->checkHistory(Ljava/io/File;)V

    goto :goto_0

    .line 1225
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1215
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_5

    .line 1216
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1218
    :cond_5
    if-eqz v3, :cond_6

    .line 1219
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1220
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1222
    :cond_6
    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    if-eqz v1, :cond_7

    .line 1223
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->checkHistory(Ljava/io/File;)V

    .line 1225
    :goto_1
    throw v5

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private saveLockWallpaperToHistory()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method

.method private saveWallpaperToHistory()V
    .locals 0

    .prologue
    .line 1185
    return-void
.end method

.method private static setHistory(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1236
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1237
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1239
    :cond_0
    return-void
.end method

.method private setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1868
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1870
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1871
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1873
    :cond_0
    return-void
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1111
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1112
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1114
    :cond_0
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1351
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1352
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1353
    sget-object v2, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1354
    sget-object v2, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1747
    const v0, 0x108027e

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 1748
    return-void
.end method

.method public clearLockWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1756
    const v0, 0x108027c

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResourceToLockWallpaper(I)V

    .line 1757
    return-void
.end method

.method public clearWallpaper()V
    .locals 2

    .prologue
    .line 1570
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1571
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :goto_0
    return-void

    .line 1575
    :cond_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1576
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1728
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :goto_0
    return-void

    .line 1730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteAllWallpaperHistory()V
    .locals 2

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/app/WallpaperManager$2;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$2;-><init>(Landroid/app/WallpaperManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1172
    return-void
.end method

.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 898
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedLockWallpaper()V

    .line 899
    return-void
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 889
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 892
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 879
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 654
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    .line 672
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 673
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v5, 0x0

    .line 793
    :goto_0
    return-object v5

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 677
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 678
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 680
    new-instance v17, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 682
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_1

    .line 683
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper input stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v5, 0x0

    goto :goto_0

    .line 686
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 687
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 688
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 693
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 694
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 695
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 696
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_5

    .line 697
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 698
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 705
    .local v4, "inHeight":I
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 709
    .restart local v17    # "is":Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 710
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 711
    if-eqz p3, :cond_6

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 712
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 721
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_1
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 722
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 724
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_7

    .line 725
    :cond_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 700
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 715
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :cond_6
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 716
    .local v18, "left":F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 717
    .local v24, "right":F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 718
    .local v28, "top":F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 719
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_1

    .line 730
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 734
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    .line 736
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 741
    :goto_2
    const/4 v11, 0x0

    .line 742
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    .line 744
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 745
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_8

    .line 746
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 748
    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 749
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 752
    :cond_9
    if-nez v11, :cond_c

    .line 754
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 755
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 756
    .restart local v16    # "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b

    .line 757
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 758
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_a

    .line 759
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 761
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 763
    :cond_b
    if-eqz v16, :cond_c

    .line 764
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 770
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_c
    if-nez v11, :cond_d

    .line 771
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 737
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 738
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 776
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_d
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_f

    .line 778
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 779
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 780
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 781
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 782
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 784
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    .line 785
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 786
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 787
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 788
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 789
    move-object/from16 v11, v27

    .line 793
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 933
    if-nez p1, :cond_0

    .line 934
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Image URI must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 937
    :cond_0
    const-string v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 938
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Image URI must be of the content scheme type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 942
    :cond_1
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 943
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 945
    .local v0, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 949
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 951
    .local v4, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3

    .line 952
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 956
    .local v1, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 966
    :cond_2
    return-object v0

    .line 962
    .end local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const-string v5, "com.android.wallpapercropper"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 965
    .restart local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 970
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1448
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1449
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    return v1

    .line 1453
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1421
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1422
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :goto_0
    return v1

    .line 1426
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1427
    :catch_0
    move-exception v0

    .line 1429
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "useCache"    # Z

    .prologue
    .line 639
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 640
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 641
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 642
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 645
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawableOfLockWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableOfLockWallpaper(Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "useCache"    # Z

    .prologue
    .line 1938
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1939
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1940
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1941
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1944
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 851
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 852
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 853
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 855
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getFastDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1912
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1913
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1914
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 1917
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1953
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperCategory()I
    .locals 5

    .prologue
    .line 2102
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2103
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "category"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2104
    .local v0, "category":I
    return v0
.end method

.method public getLockWallpaperDesiredMinimumWidth()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1966
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1967
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1968
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1969
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1970
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1971
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1972
    .local v2, "height":I
    if-eqz v0, :cond_0

    .line 1973
    if-ge v5, v2, :cond_1

    const/4 v3, 0x1

    .line 1974
    .local v3, "isPortrait":Z
    :goto_0
    if-eqz v3, :cond_2

    move v4, v5

    .line 1978
    .end local v3    # "isPortrait":Z
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v4

    .line 1973
    goto :goto_0

    .restart local v3    # "isPortrait":Z
    :cond_2
    move v4, v2

    .line 1974
    goto :goto_1
.end method

.method public getLockWallpaperInfo()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2023
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2024
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :goto_0
    return-object v1

    .line 2027
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getLockWallpaperInfo()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getLockWallpaperVideoScaleType()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2125
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2126
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "scaleType"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2127
    .local v1, "type":I
    return v1
.end method

.method public getVideoPathFromLockWallpaper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2062
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->peekVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperHistoryArray()[Ljava/io/File;
    .locals 3

    .prologue
    .line 1131
    iget-object v1, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/WallpaperManager;->checkOrMkDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/app/WallpaperManager$1;

    invoke-direct {v2, p0}, Landroid/app/WallpaperManager$1;-><init>(Landroid/app/WallpaperManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWallpaperHistoryList()Ljava/util/ArrayList;
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
    .line 1148
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v5, "mHistoryPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v2

    .line 1150
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1151
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1152
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1153
    .local v1, "file":Ljava/io/File;
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1156
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v5
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 908
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 909
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_0
    return-object v1

    .line 912
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getlockWallpaperDesiredMinimumHeight()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1986
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1987
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1988
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1989
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1990
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1991
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1992
    .local v2, "height":I
    if-eqz v0, :cond_0

    .line 1993
    if-ge v5, v2, :cond_1

    const/4 v3, 0x1

    .line 1994
    .local v3, "isPortrait":Z
    :goto_0
    if-eqz v3, :cond_2

    move v4, v2

    .line 1998
    .end local v3    # "isPortrait":Z
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v4

    .line 1993
    goto :goto_0

    .restart local v3    # "isPortrait":Z
    :cond_2
    move v4, v5

    .line 1994
    goto :goto_1
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1393
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1394
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_0
    return v3

    .line 1398
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1399
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "name":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1401
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isWallpaperSupported()Z
    .locals 2

    .prologue
    .line 1704
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1705
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1708
    :cond_0
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1709
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 828
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 830
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 831
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 834
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2009
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2010
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2011
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2012
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 2015
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 866
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 867
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 868
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 870
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1691
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :goto_0
    return-void

    .line 1694
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1033
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1034
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1040
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1043
    const/4 v1, 0x0

    .line 1044
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1046
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1048
    const/4 v3, 0x1

    .line 1050
    if-eqz v2, :cond_2

    .line 1051
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1054
    :cond_2
    if-eqz v3, :cond_0

    .line 1055
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    goto :goto_0

    .line 1057
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1050
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    .line 1051
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1050
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setBitmapToLockWallpaper(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1840
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1841
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_0
    :goto_0
    return-void

    .line 1845
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1846
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1849
    const/4 v1, 0x0

    .line 1850
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1852
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1854
    const/4 v3, 0x1

    .line 1856
    if-eqz v2, :cond_2

    .line 1857
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1860
    :cond_2
    if-eqz v3, :cond_0

    .line 1861
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    goto :goto_0

    .line 1863
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1856
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    .line 1857
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1856
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1555
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-void

    .line 1558
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1532
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1533
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :goto_0
    return-void

    .line 1535
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1537
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLockWallpaperCategory(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    const/4 v4, 0x2

    .line 2089
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "setLockWallpaperCategory"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2090
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2094
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2095
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2096
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "category"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2097
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setLockWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 1670
    iput p1, p0, Landroid/app/WallpaperManager;->mLockWallpaperXStep:F

    .line 1671
    iput p2, p0, Landroid/app/WallpaperManager;->mLockWallpaperYStep:F

    .line 1672
    return-void
.end method

.method public setLockWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1641
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mLockWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mLockWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setLockWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :goto_0
    return-void

    .line 1643
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLockWallpaperVideoScaleType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x2

    .line 2114
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    .line 2121
    :goto_0
    return-void

    .line 2117
    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2118
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2119
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "scaleType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setResource(I)V
    .locals 8
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 990
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 996
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 998
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1002
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1004
    const/4 v3, 0x1

    .line 1006
    if-eqz v2, :cond_2

    .line 1007
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1010
    :cond_2
    if-eqz v3, :cond_0

    .line 1011
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    goto :goto_0

    .line 1014
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1006
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_3

    .line 1007
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1006
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResourceToLockWallpaper(I)V
    .locals 8
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1810
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1811
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1817
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1819
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1820
    const/4 v1, 0x0

    .line 1821
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1823
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1824
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroid/app/WallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1825
    const/4 v3, 0x1

    .line 1827
    if-eqz v2, :cond_2

    .line 1828
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1831
    :cond_2
    if-eqz v3, :cond_0

    .line 1832
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    goto :goto_0

    .line 1835
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1827
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_3

    .line 1828
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1827
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1079
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1085
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1088
    const/4 v1, 0x0

    .line 1089
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1091
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1093
    const/4 v3, 0x1

    .line 1095
    if-eqz v2, :cond_2

    .line 1096
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1099
    :cond_2
    if-eqz v3, :cond_0

    .line 1100
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    goto :goto_0

    .line 1102
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1095
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    .line 1096
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1095
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStreamToLockWallpaper(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1880
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1881
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1885
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1886
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 1889
    const/4 v1, 0x0

    .line 1890
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1892
    .local v3, "isSetSuccess":Z
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1893
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1894
    const/4 v3, 0x1

    .line 1896
    if-eqz v2, :cond_2

    .line 1897
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1900
    :cond_2
    if-eqz v3, :cond_0

    .line 1901
    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    goto :goto_0

    .line 1903
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "isSetSuccess":Z
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1896
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "isSetSuccess":Z
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    .line 1897
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1896
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setVideoPathToLockWallpaper(Ljava/lang/String;)V
    .locals 5
    .param p1, "absoluteVideoPath"    # Ljava/lang/String;

    .prologue
    .line 2036
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "absoluteVideoPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2037
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v2, :cond_0

    .line 2038
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "sGlobals == null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2040
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2056
    :cond_1
    :goto_0
    return-void

    .line 2044
    :cond_2
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "before setVideoPath"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2045
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IWallpaperManager;->setVideoPath(Ljava/lang/String;)Z

    move-result v1

    .line 2046
    .local v1, "isSuccess":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after setVideoPathisSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2047
    if-eqz v1, :cond_1

    .line 2048
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->setLockWallpaperCategory(I)V

    .line 2049
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->notifyLockScreenVideoChanged(Ljava/lang/String;)V

    .line 2050
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "after notifyLockScreenVideoChanged"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2052
    .end local v1    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2054
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "RemoteException setVideoPathToLockScreen"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 1591
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1592
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_0
    return v0

    .line 1596
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    const/4 v0, 0x1

    goto :goto_0

    .line 1598
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 1657
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1658
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1659
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1620
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    :goto_0
    return-void

    .line 1623
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 8
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 1491
    :try_start_0
    const-string/jumbo v3, "sys.max_texture_size"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1496
    .local v2, "maximumTextureSize":I
    :goto_0
    if-lez v2, :cond_1

    .line 1497
    if-gt p1, v2, :cond_0

    if-le p2, v2, :cond_1

    .line 1499
    :cond_0
    int-to-float v3, p2

    int-to-float v4, p1

    div-float v0, v3, v4

    .line 1500
    .local v0, "aspect":F
    if-le p1, p2, :cond_2

    .line 1501
    move p1, v2

    .line 1502
    int-to-float v3, p1

    mul-float/2addr v3, v0

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int p2, v4

    .line 1510
    .end local v0    # "aspect":F
    :cond_1
    :goto_1
    :try_start_1
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1511
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    .end local v2    # "maximumTextureSize":I
    :goto_2
    return-void

    .line 1492
    :catch_0
    move-exception v1

    .line 1493
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2    # "maximumTextureSize":I
    goto :goto_0

    .line 1504
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "aspect":F
    :cond_2
    move p2, v2

    .line 1505
    int-to-float v3, p2

    div-float/2addr v3, v0

    float-to-double v4, v3

    add-double/2addr v4, v6

    double-to-int p1, v4

    goto :goto_1

    .line 1513
    .end local v0    # "aspect":F
    :cond_3
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$500(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1516
    .end local v2    # "maximumTextureSize":I
    :catch_1
    move-exception v3

    goto :goto_2
.end method
