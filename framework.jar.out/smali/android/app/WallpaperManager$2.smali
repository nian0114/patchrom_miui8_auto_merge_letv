.class Landroid/app/WallpaperManager$2;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->deleteAllWallpaperHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Landroid/app/WallpaperManager$2;->this$0:Landroid/app/WallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1164
    iget-object v5, p0, Landroid/app/WallpaperManager$2;->this$0:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v2

    .line 1165
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 1166
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1167
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1166
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1170
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method
