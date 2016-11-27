.class public Landroid/content/pm/LauncherActivityInfo;
.super Ljava/lang/Object;
.source "LauncherActivityInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherActivityInfo"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mFirstInstallTime:J

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "firstInstallTime"    # J

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 65
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 66
    invoke-static {p2}, Landroid/content/pm/LauncherApps;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    .line 67
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    .line 68
    iput-wide p4, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    .line 71
    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "iconRes"    # I
    .param p2, "density"    # I

    .prologue
    .line 220
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 222
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 228
    .end local v0    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 225
    :catch_0
    move-exception v1

    .line 228
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getOriginalIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "density"    # I

    .prologue
    .line 142
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 143
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 144
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    .local v1, "bitmapTheme":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 147
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 148
    .local v2, "drawableTheme":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 207
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "bitmapTheme":Landroid/graphics/Bitmap;
    .end local v2    # "drawableTheme":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v2

    .line 156
    :cond_1
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7}, Landroid/content/pm/ResolveInfo;->getIconResourceInternal()I

    move-result v5

    .line 159
    .local v5, "iconRes":I
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    if-nez v7, :cond_2

    .line 161
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 162
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 163
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 164
    .restart local v1    # "bitmapTheme":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 165
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 166
    .restart local v2    # "drawableTheme":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 172
    .end local v1    # "bitmapTheme":Landroid/graphics/Bitmap;
    .end local v2    # "drawableTheme":Landroid/graphics/drawable/Drawable;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v7, :cond_3

    .line 173
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3

    .line 174
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v8, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne v7, v8, :cond_3

    .line 176
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 177
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 178
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    .restart local v1    # "bitmapTheme":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 180
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 181
    .restart local v2    # "drawableTheme":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 191
    .end local v1    # "bitmapTheme":Landroid/graphics/Bitmap;
    .end local v2    # "drawableTheme":Landroid/graphics/drawable/Drawable;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v5, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 194
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Landroid/content/res/theme/LeIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v3

    .line 195
    .local v3, "haveThemplateRes":Z
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 196
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    .line 197
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v8, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v7, v8, :cond_4

    .line 198
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 204
    :cond_4
    if-nez v4, :cond_5

    .line 205
    iget-object v7, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_5
    move-object v2, v4

    .line 207
    goto/16 :goto_0
.end method


# virtual methods
.method public getApplicationFlags()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return v0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherActivityInfo;->getOriginalIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    .end local v0    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 279
    .restart local v0    # "originalIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v1, "LauncherActivityInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create badged icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Landroid/content/pm/LauncherActivityInfo;->mFirstInstallTime:J

    return-wide v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "density"    # I

    .prologue
    .line 121
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    .line 122
    .local v1, "iconRes":I
    invoke-direct {p0, v1, p1}, Landroid/content/pm/LauncherActivityInfo;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 125
    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfo;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method
