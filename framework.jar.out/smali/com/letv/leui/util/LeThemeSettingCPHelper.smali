.class public Lcom/letv/leui/util/LeThemeSettingCPHelper;
.super Ljava/lang/Object;
.source "LeThemeSettingCPHelper.java"


# static fields
.field public static final ARGUMENT_BOOT_VIDEO_PATH:Ljava/lang/String; = "ARGUMENT_BOOT_VIDEO_PATH"

.field public static final ARGUMENT_DO_CHANGE_THEME_INT_RESULT:Ljava/lang/String; = "ARGUMENT_DO_CHANGE_THEME_INT_RESULT"

.field public static final ARGUMENT_DO_CHANGE_THEME_LIST_RESULT:Ljava/lang/String; = "ARGUMENT_DO_CHANGE_THEME_LIST_RESULT"

.field public static final ARGUMENT_DO_CHANGE_THEME_TYPE:Ljava/lang/String; = "ARGUMENT_DO_CHANGE_THEME_TYPE"

.field public static final ARGUMENT_DO_CHANGE_THEME_VALUE:Ljava/lang/String; = "ARGUMENT_DO_CHANGE_THEME_VALUE"

.field public static final ARGUMENT_DO_CHANGE_THEME_ZIP_PATH:Ljava/lang/String; = "ARGUMENT_DO_CHANGE_THEME_ZIP_PATH"

.field public static final ARGUMENT_POWER_RESTART_MSG:Ljava/lang/String; = "ARGUMENT_POWER_RESTART_MSG"

.field public static final AUTHORITY:Ljava/lang/String; = "com.letv.android.theme.lethemesetting.provider"

.field public static final CODE_CHANGE_THEME_FAILED:I = 0x3e9

.field public static final CODE_CHANGE_THEME_SUCCESS:I = 0x3e8

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_THEME_VALUE:Ljava/lang/String; = "DEFAULT_THEME_VALUE"

.field public static final METHOD_DO_CHANGE_THEME:Ljava/lang/String; = "METHOD_CHANGE_THEME"

.field public static final METHOD_GET_DEFAULT_THEME_VALUE:Ljava/lang/String; = "METHOD_GET_DEFAULT_THEME_VALUE"

.field public static final METHOD_GET_LOCAL_THEME_PATH_LIST:Ljava/lang/String; = "METHOD_GET_LOCAL_THEME_PATH_LIST"

.field public static final METHOD_POWER_RESTART:Ljava/lang/String; = "METHOD_POWER_RESTART"

.field public static final METHOD_SET_BOOT_VIDEO:Ljava/lang/String; = "METHOD_SET_BOOT_VIDEO"

.field private static final TAG:Ljava/lang/String; = "LeThemeSettingContentProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.letv.android.theme.lethemesetting.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeThemeSettingCPHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMethodArgument(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, -0x270f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "METHOD_CHANGE_THEME"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->getArgumentThemeZipPath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .local v1, "themeZipPath":Ljava/lang/String;
    invoke-static {p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->getArgumentThemeValue(Landroid/os/Bundle;)I

    move-result v0

    .local v0, "themeValue":I
    invoke-static {p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->getArgumentThemeType(Landroid/os/Bundle;)I

    move-result v2

    .local v2, "type":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "LeThemeSettingContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "argument error ! method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " themeZipPath is null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "themeValue":I
    .end local v1    # "themeZipPath":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return v4

    .restart local v0    # "themeValue":I
    .restart local v1    # "themeZipPath":Ljava/lang/String;
    .restart local v2    # "type":I
    :cond_1
    if-gt v2, v5, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    const-string v5, "LeThemeSettingContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "argument error ! method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_4

    const-string v5, "LeThemeSettingContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "argument error ! method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " themeValue is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_0

    .end local v0    # "themeValue":I
    .end local v1    # "themeZipPath":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_5
    const-string v6, "METHOD_SET_BOOT_VIDEO"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Lcom/letv/leui/util/LeThemeSettingCPHelper;->getArgumentVideoPath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .local v3, "videoPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "LeThemeSettingContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "argument error ! method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " video path is null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v4, v5

    goto/16 :goto_0
.end method

.method public static getArgumentRestartMsg(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "ARGUMENT_POWER_RESTART_MSG"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArgumentThemeType(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_TYPE"

    const/16 v1, -0x270f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getArgumentThemeValue(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_VALUE"

    const/16 v1, -0x270f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getArgumentThemeZipPath(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_ZIP_PATH"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArgumentVideoPath(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "ARGUMENT_BOOT_VIDEO_PATH"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultThemeValue()Landroid/os/Bundle;
    .locals 11

    .prologue
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, "resultBundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "is":Ljava/io/InputStream;
    const/4 v1, -0x1

    .local v1, "defaultTheme":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/"

    const-string v10, "themeConfig.json"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v6, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v6, "json":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v5, "jsThemeConfig":Lorg/json/JSONObject;
    const-string v8, "defaultThemeId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v8, "LeThemeSettingContentProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDefaultThemeValue "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "DEFAULT_THEME_VALUE"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .end local v0    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v6    # "json":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v7

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "jsThemeConfig":Lorg/json/JSONObject;
    .restart local v6    # "json":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "jsThemeConfig":Lorg/json/JSONObject;
    .end local v6    # "json":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v8

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "jsThemeConfig":Lorg/json/JSONObject;
    .restart local v6    # "json":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static processThemeResult(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "result"    # I

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "resultBundle":Landroid/os/Bundle;
    const-string v1, "METHOD_CHANGE_THEME"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "ARGUMENT_DO_CHANGE_THEME_INT_RESULT"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .end local v0    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .restart local v0    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    const-string v1, "ARGUMENT_DO_CHANGE_THEME_INT_RESULT"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processThemeResult(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "resultBundle":Landroid/os/Bundle;
    const-string v1, "METHOD_GET_LOCAL_THEME_PATH_LIST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ARGUMENT_DO_CHANGE_THEME_LIST_RESULT"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .end local v0    # "resultBundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .restart local v0    # "resultBundle":Landroid/os/Bundle;
    .restart local p1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setArgumentRestartMsg(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "ARGUMENT_POWER_RESTART_MSG"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setArgumentThemeType(Landroid/os/Bundle;I)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "type"    # I

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_TYPE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setArgumentThemeValue(Landroid/os/Bundle;I)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "themeValue"    # I

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_VALUE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setArgumentThemeZipPath(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "themeZipPath"    # Ljava/lang/String;

    .prologue
    const-string v0, "ARGUMENT_DO_CHANGE_THEME_ZIP_PATH"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setArgumentVideoPath(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    const-string v0, "ARGUMENT_BOOT_VIDEO_PATH"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
