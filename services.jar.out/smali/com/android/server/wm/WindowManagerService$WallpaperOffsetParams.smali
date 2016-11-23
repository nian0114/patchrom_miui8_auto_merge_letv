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

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperX:F

    .line 692
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperY:F

    .line 693
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperXStep:F

    .line 694
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperYStep:F

    .line 695
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    .line 696
    iput v1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    .line 705
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mType:I

    .line 706
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/high16 v1, -0x80000000

    .line 709
    const-string v0, " mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 710
    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 711
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_1

    .line 713
    :cond_0
    const-string v0, "  mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 714
    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$WallpaperOffsetParams;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 717
    :cond_1
    return-void
.end method
