.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field context:Landroid/content/Context;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field private lockCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field lockImageWallpaperPending:Z

.field lockLastDiedTime:J

.field lockWallpaperUpdating:Z

.field mHeightOfLockWallpaper:I

.field mLockWallpaperBitmap:Landroid/graphics/Bitmap;

.field mLockWallpaperComponent:Landroid/content/ComponentName;

.field mNameOfLockWallpaper:Ljava/lang/String;

.field mNextLockWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperBitmap:Landroid/graphics/Bitmap;

.field mWidthOfLockWallpaper:I

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperFileLock:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 275
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 298
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 301
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockCallbacks:Landroid/os/RemoteCallbackList;

    .line 304
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 305
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 307
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 308
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 309
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 315
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 316
    new-instance v3, Ljava/io/File;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 317
    new-instance v3, Ljava/io/File;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "lock_wallpaper"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFileLock:Ljava/io/File;

    .line 318
    const-string v3, "window"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 319
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 320
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 321
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 322
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 323
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 324
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WallpaperData-:  mWidthOfLockWallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHeightOfLockWallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method
