.class public Lcom/letv/leui/util/LeThemeSettingCPClient;
.super Ljava/lang/Object;
.source "LeThemeSettingCPClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doChangeTheme(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeZipPath"    # Ljava/lang/String;
    .param p2, "themeValue"    # I
    .param p3, "type"    # I

    .prologue
    .line 36
    const-string v3, "context"

    invoke-static {p0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v3, "themeZipPath"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->setArgumentThemeZipPath(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 41
    invoke-static {v0, p2}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->setArgumentThemeValue(Landroid/os/Bundle;I)V

    .line 42
    invoke-static {v0, p3}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->setArgumentThemeType(Landroid/os/Bundle;I)V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "METHOD_CHANGE_THEME"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 44
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "ARGUMENT_DO_CHANGE_THEME_INT_RESULT"

    const/16 v4, 0x3e9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 45
    .local v2, "resultInt":I
    return v2
.end method

.method public static doPowerRestart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v1, "context"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->setArgumentRestartMsg(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "METHOD_POWER_RESTART"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 95
    return-void
.end method

.method public static getDefaultThemeValue(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v3, "context"

    invoke-static {p0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "METHOD_GET_DEFAULT_THEME_VALUE"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 107
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "DEFAULT_THEME_VALUE"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "resultInt":I
    return v2
.end method

.method public static getLocalThemePathList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 58
    const-string v2, "context"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "METHOD_GET_LOCAL_THEME_PATH_LIST"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "result":Landroid/os/Bundle;
    const-string v2, "ARGUMENT_DO_CHANGE_THEME_LIST_RESULT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v1
.end method

.method public static getLocalThemePreview(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeId"    # I

    .prologue
    .line 120
    const-string v5, "context"

    invoke-static {p0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v5, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 122
    .local v4, "resultUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 124
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 125
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 130
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 127
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 130
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static setBootVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 74
    const-string v4, "context"

    invoke-static {p0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v4, "videoPath"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "requestBundle":Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->setArgumentVideoPath(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "METHOD_GET_LOCAL_THEME_PATH_LIST"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, "result":Landroid/os/Bundle;
    const-string v4, "ARGUMENT_DO_CHANGE_THEME_INT_RESULT"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "resultInt":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
