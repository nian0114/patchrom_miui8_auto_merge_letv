.class Landroid/app/WallpaperManager$3;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->checkRepeat(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/io/File;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Landroid/app/WallpaperManager$3;->this$0:Landroid/app/WallpaperManager;

    iput-object p2, p0, Landroid/app/WallpaperManager$3;->val$path:Ljava/lang/String;

    iput p3, p0, Landroid/app/WallpaperManager$3;->val$size:I

    iput-object p4, p0, Landroid/app/WallpaperManager$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager$3;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1289
    # invokes: Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I
    invoke-static {p1}, Landroid/app/WallpaperManager;->access$700(Ljava/io/File;)I

    move-result v0

    .line 1290
    .local v0, "length":I
    if-lez v0, :cond_0

    # invokes: Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I
    invoke-static {p1}, Landroid/app/WallpaperManager;->access$700(Ljava/io/File;)I

    move-result v1

    iget v2, p0, Landroid/app/WallpaperManager$3;->val$size:I

    if-ne v1, v2, :cond_0

    .line 1291
    iget-object v1, p0, Landroid/app/WallpaperManager$3;->val$file:Ljava/io/File;

    # invokes: Landroid/app/WallpaperManager;->checkFileMd5(Ljava/io/File;Ljava/io/File;)Z
    invoke-static {p1, v1}, Landroid/app/WallpaperManager;->access$800(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    const/4 v1, 0x1

    .line 1296
    .end local v0    # "length":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
