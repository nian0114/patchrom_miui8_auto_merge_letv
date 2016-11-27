.class Landroid/content/res/theme/LeThemeManager$1;
.super Ljava/lang/Object;
.source "LeThemeManager.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/theme/LeThemeManager;->setDirPermissions(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/theme/LeThemeManager;


# direct methods
.method constructor <init>(Landroid/content/res/theme/LeThemeManager;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Landroid/content/res/theme/LeThemeManager$1;->this$0:Landroid/content/res/theme/LeThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
