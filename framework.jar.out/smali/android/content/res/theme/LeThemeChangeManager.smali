.class public Landroid/content/res/theme/LeThemeChangeManager;
.super Ljava/lang/Object;
.source "LeThemeChangeManager.java"


# static fields
.field private static mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

.field private static mThemeManager:Landroid/content/res/theme/LeThemeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/content/res/theme/LeThemeChangeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeChangeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/theme/LeThemeChangeManager;

    invoke-direct {v0, p0}, Landroid/content/res/theme/LeThemeChangeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    invoke-static {p0}, Landroid/content/res/theme/LeThemeManager;->getInstance(Landroid/content/Context;)Landroid/content/res/theme/LeThemeManager;

    move-result-object v0

    sput-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-static {}, Landroid/content/res/theme/LeThemeManager;->getThemeZips()V

    :cond_0
    sget-object v0, Landroid/content/res/theme/LeThemeChangeManager;->mThemeChangeManager:Landroid/content/res/theme/LeThemeChangeManager;

    return-object v0
.end method


# virtual methods
.method public changeTheme(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "zipFilePath"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "changeTheme"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zipFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v3, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string v3, "/data/"

    invoke-virtual {v2, p1, v3}, Landroid/content/res/theme/LeThemeManager;->UnZipFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v3, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string v3, "/data/letvTheme"

    invoke-virtual {v2, v3}, Landroid/content/res/theme/LeThemeManager;->deleteThemeRes(Ljava/lang/String;)Z

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-virtual {v2}, Landroid/content/res/theme/LeThemeManager;->reNameLetvTheme1ToLetvTheme()V

    invoke-virtual {p0, p2}, Landroid/content/res/theme/LeThemeChangeManager;->setThemeValues(I)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v3, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string v3, "/data/letvTheme1"

    invoke-virtual {v2, v3}, Landroid/content/res/theme/LeThemeManager;->deleteThemeFile1(Ljava/lang/String;)Z

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v3, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    invoke-virtual {v2, v1}, Landroid/content/res/theme/LeThemeManager;->sendChangeThemeBroadCast(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setThemeValues(I)V
    .locals 4
    .param p1, "themeValues"    # I

    .prologue
    :try_start_0
    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string v2, "/data/letvTheme/wallpaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/LeThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    sget-object v1, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    sget-object v2, Landroid/content/res/theme/LeThemeChangeManager;->mThemeManager:Landroid/content/res/theme/LeThemeManager;

    const-string v2, "/data/letvTheme/wallpaper"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/theme/LeThemeManager;->setWallpaper(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    iput p1, v1, Landroid/content/res/Configuration;->letvTheme:I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/theme/LeThemeChangeManager;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
