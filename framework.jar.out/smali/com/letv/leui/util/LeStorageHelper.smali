.class public Lcom/letv/leui/util/LeStorageHelper;
.super Ljava/lang/Object;
.source "LeStorageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .local v3, "storage_path":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104073d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "storage_path":Ljava/lang/String;
    .end local p1    # "path":Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2    # "path":Ljava/lang/String;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, p1

    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStorageDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104073d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
