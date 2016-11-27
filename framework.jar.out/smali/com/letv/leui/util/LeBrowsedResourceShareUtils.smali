.class public Lcom/letv/leui/util/LeBrowsedResourceShareUtils;
.super Ljava/lang/Object;
.source "LeBrowsedResourceShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;,
        Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;
    }
.end annotation


# static fields
.field private static final FEATURE_MAX:Ljava/lang/String; = "share.max.share_show_max_logo"

.field private static final FEATURE_MAX_PLUS:Ljava/lang/String; = "share.max.share_show_max_plus_logo"

.field private static final FEATURE_PRO:Ljava/lang/String; = "share.pro.share_show_pro_logo"

.field private static final FEATURE_S2:Ljava/lang/String; = "share.show_s2_logo"

.field private static final FEATURE_X2:Ljava/lang/String; = "share.show_x2_logo"

.field private static final FEATURE_X3:Ljava/lang/String; = "share.x3.share_show_x3_logo"

.field private static final FEATURE_X6:Ljava/lang/String; = "share.show_x6_logo"

.field private static final MAX1_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.max"

.field private static final MAXPLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.maxplus"

.field private static final MAX_PINK_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.letv.android.share.pink.max"

.field private static final PRO_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.pro"

.field private static final QQ_ACTIVITY:Ljava/lang/String; = ".LaunchQQShareActivity"

.field private static final QZONE_ACTIVITY:Ljava/lang/String; = ".LaunchQZoneShareActivity"

.field private static final S1_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.preleading"

.field private static final TAG:Ljava/lang/String;

.field private static final WECHAT_ACTIVITY:Ljava/lang/String; = ".LaunchWeChatShareActivity"

.field private static final WEIBO_ACTIVITY:Ljava/lang/String; = ".LaunchWeiboShareActivity"

.field private static final X2_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x2"

.field private static final X3_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.letv.android.share.le1s"

.field private static final X6PLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6pro"

.field private static final X6_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6"

.field private static final notSupportAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.qqlite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->notSupportAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 497
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-object v7

    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 501
    .local v7, "data":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 502
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 503
    :cond_2
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 505
    :cond_3
    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 507
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 510
    .local v9, "index":I
    const/4 v0, -0x1

    if-le v9, v0, :cond_4

    .line 511
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 514
    .end local v9    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 518
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getSharePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 458
    const-string v0, ""

    .line 459
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.pro.share_show_pro_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    const-string v0, "com.le.share.pro"

    .line 486
    :goto_0
    return-object v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.max.share_show_max_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    invoke-static {}, Lcom/letv/leui/util/LeThemeUtils;->getThemeColor()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 464
    const-string v0, "com.letv.android.share.pink.max"

    goto :goto_0

    .line 466
    :cond_1
    const-string v0, "com.le.share.max"

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.max.share_show_max_plus_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 469
    const-string v0, "com.le.share.maxplus"

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.x3.share_show_x3_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 471
    const-string v0, "com.letv.android.share.le1s"

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x6_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 473
    invoke-static {}, Lcom/letv/leui/util/LeProductConfig;->getProductConfigType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 474
    const-string v0, "com.le.share.x6pro"

    goto :goto_0

    .line 476
    :cond_5
    const-string v0, "com.le.share.x6"

    goto :goto_0

    .line 478
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_s2_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 480
    const-string v0, "com.le.share.x6"

    goto :goto_0

    .line 481
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x2_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 482
    const-string v0, "com.le.share.x2"

    goto :goto_0

    .line 484
    :cond_8
    const-string v0, "com.le.share.preleading"

    goto :goto_0
.end method

.method private static outputLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 448
    sget-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method private static setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 342
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 343
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 344
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    :cond_0
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 352
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 353
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_1
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 361
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 372
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 373
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    .local v1, "imagePath":Ljava/lang/String;
    const-string v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_3
    if-nez v1, :cond_7

    .line 379
    const-string v2, " Convert string to uri failed! "

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 444
    .end local v1    # "imagePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 347
    :cond_4
    const-string v2, " the value of LeResourceType.leText must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 348
    goto :goto_0

    .line 356
    :cond_5
    const-string v2, " the value of LeResourceType.leWebUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 357
    goto :goto_0

    .line 367
    :cond_6
    const-string v2, " the value of LeResourceType.leBitmap must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 368
    goto :goto_0

    .line 382
    .restart local v1    # "imagePath":Ljava/lang/String;
    :cond_7
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 383
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    :cond_8
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 392
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 393
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    :cond_a
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 401
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 402
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :cond_b
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 410
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 411
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    :cond_c
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 419
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 420
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_d
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 428
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 429
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :cond_e
    :goto_1
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 436
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 437
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_f
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 387
    :cond_10
    const-string v2, " the value of LeResourceType.leImagePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 388
    goto/16 :goto_0

    .line 396
    :cond_11
    const-string v2, " the value of LeResourceType.leTitle must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 397
    goto/16 :goto_0

    .line 405
    :cond_12
    const-string v2, " the value of LeResourceType.leMusicUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 406
    goto/16 :goto_0

    .line 414
    :cond_13
    const-string v2, " the value of LeResourceType.leVideoUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 415
    goto/16 :goto_0

    .line 423
    :cond_14
    const-string v2, " the value of LeResourceType.leFilePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 424
    goto/16 :goto_0

    .line 432
    :cond_15
    const-string v2, " the value of LeResourceType.packageName must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_16
    const-string v2, " the value of LeResourceType.pageName must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static shareBrowsedResourcesByIntent(ILjava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z
    .locals 21
    .param p0, "platformId"    # I
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p3, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "leshare.enable_share_by_sharesdk"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 68
    const/16 v18, 0x0

    .line 337
    :goto_0
    return v18

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 72
    :cond_1
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "Type should not be empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/16 v18, 0x0

    goto :goto_0

    .line 76
    :cond_2
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 77
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 78
    .local v12, "obj":Ljava/lang/Object;
    if-eqz v12, :cond_4

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v16, v12

    .line 79
    check-cast v16, Ljava/lang/String;

    .line 80
    .local v16, "targetPackageName":Ljava/lang/String;
    sget-object v3, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->notSupportAppList:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v10, :cond_4

    aget-object v13, v3, v6

    .line 81
    .local v13, "pn":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 82
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sdk share does not support app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v18, 0x0

    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 90
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "pn":Ljava/lang/String;
    .end local v16    # "targetPackageName":Ljava/lang/String;
    :cond_4
    const/4 v14, -0x1

    .line 92
    .local v14, "resourceId":I
    const-string v11, ""

    .line 93
    .local v11, "linkedUrl":Ljava/lang/String;
    const-string v7, ""

    .line 94
    .local v7, "imageUrl":Ljava/lang/String;
    const/4 v15, 0x0

    .line 103
    .local v15, "supportLinkcard":Z
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 104
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 105
    .restart local v12    # "obj":Ljava/lang/Object;
    if-eqz v12, :cond_5

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 106
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "The type of leLinkUrl should be string."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 108
    :cond_5
    if-eqz v12, :cond_6

    move-object v11, v12

    .line 109
    check-cast v11, Ljava/lang/String;

    .line 112
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_6
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 113
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 114
    .restart local v12    # "obj":Ljava/lang/Object;
    if-eqz v12, :cond_7

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 115
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "The type of leImagePath should be string."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 117
    :cond_7
    if-eqz v12, :cond_8

    move-object v7, v12

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 121
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_8
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->text:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 122
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 123
    const-string v18, "http"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 124
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "web page url should start wtih \'http\' or \'https\'."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 127
    :cond_9
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v14, 0x3

    .line 172
    :cond_a
    :goto_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_16

    .line 173
    const-string v18, "No match share type found!"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 174
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 129
    :cond_b
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_c

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 130
    :cond_c
    const-string v18, "text resource is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 131
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 133
    :cond_d
    const/4 v14, 0x1

    goto :goto_2

    .line 136
    :cond_e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 137
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_f

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 138
    const-string v18, "image resource is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 139
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 141
    :cond_f
    const/4 v14, 0x2

    goto :goto_2

    .line 143
    :cond_10
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 144
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 145
    const-string v18, "audio url is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 146
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 149
    :cond_11
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, p0

    if-eq v0, v1, :cond_12

    .line 150
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_12
    const/4 v14, 0x4

    goto/16 :goto_2

    .line 154
    :cond_13
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 155
    if-eqz v11, :cond_14

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    const-string v18, "content:"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 156
    :cond_14
    const-string v18, "video url is null or can not be local resource"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 157
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 159
    :cond_15
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v14, 0x5

    goto/16 :goto_2

    .line 177
    :cond_16
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v8, "intent":Landroid/content/Intent;
    invoke-static/range {p3 .. p3}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getSharePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, "leSharePackageName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 336
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "Only support WeiXin, Weibo or QQ at present."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 182
    :pswitch_0
    new-instance v4, Landroid/content/ComponentName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".LaunchWeiboShareActivity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_17

    .line 185
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 187
    :cond_17
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 190
    :cond_18
    const-string v17, ""

    .line 191
    .local v17, "textStr":Ljava/lang/String;
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_19

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_1a

    .line 192
    :cond_19
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_1a
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1b

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_1e

    .line 198
    :cond_1b
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v19

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :goto_3
    if-nez v15, :cond_1c

    .line 209
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 210
    const/4 v14, 0x0

    .line 212
    :cond_1c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    .end local v17    # "textStr":Ljava/lang/String;
    :cond_1d
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 200
    .restart local v17    # "textStr":Ljava/lang/String;
    :cond_1e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 217
    .end local v17    # "textStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 223
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 224
    const-string v18, "isFriendGroup"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :goto_5
    new-instance v4, Landroid/content/ComponentName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".LaunchWeChatShareActivity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 230
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_20

    .line 231
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 226
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_1f
    const-string v18, "isFriendGroup"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 233
    .restart local v4    # "component":Landroid/content/ComponentName;
    :cond_20
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 237
    .end local v4    # "component":Landroid/content/ComponentName;
    :pswitch_2
    new-instance v4, Landroid/content/ComponentName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".LaunchQQShareActivity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v14, v0, :cond_24

    .line 240
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_21

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 241
    :cond_21
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "video url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 244
    :cond_22
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_23

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 247
    :cond_23
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_25

    .line 252
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 255
    :cond_25
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v14, v0, :cond_26

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v14, v0, :cond_26

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v14, v0, :cond_2b

    .line 256
    :cond_26
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_27

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 257
    :cond_27
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "webPage url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 261
    :cond_28
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_29

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 262
    :cond_29
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2a
    :goto_6
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 265
    :cond_2b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_2d

    .line 266
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_2c

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 267
    :cond_2c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "image url is empty for qq image share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 270
    :cond_2d
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v14, v0, :cond_34

    .line 271
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_2e

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 272
    :cond_2e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_2f
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_30

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    .line 276
    :cond_30
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "target url is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 279
    :cond_31
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v19

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_32

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33

    .line 283
    :cond_32
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "music url is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_33
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v19

    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 289
    :cond_34
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "No support for other types for qq"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 296
    .end local v4    # "component":Landroid/content/ComponentName;
    :pswitch_3
    new-instance v4, Landroid/content/ComponentName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".LaunchQZoneShareActivity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v14, v0, :cond_39

    .line 299
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_35

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 300
    :cond_35
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "video url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 303
    :cond_36
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_37

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 306
    :cond_37
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_38
    :goto_7
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_3d

    .line 322
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 309
    :cond_39
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v14, v0, :cond_38

    .line 310
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3a

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 311
    :cond_3a
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "music url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 314
    :cond_3b
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3c

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 317
    :cond_3c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 324
    :cond_3d
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_3e

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 325
    :cond_3e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "webPage url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 328
    :cond_3f
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_40

    const-string v18, ""

    sget-object v19, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_41

    .line 329
    :cond_40
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_41
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
