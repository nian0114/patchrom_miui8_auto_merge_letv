.class Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperOffsetParams"
.end annotation


# instance fields
.field mLastWallpaperDisplayOffsetX:I

.field mLastWallpaperDisplayOffsetY:I

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mType:I

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/high16 v1, -0x80000000

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperX:F

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperY:F

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperXStep:F

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mType:I

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/high16 v1, -0x80000000

    const-string v0, " mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "  mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void
.end method
