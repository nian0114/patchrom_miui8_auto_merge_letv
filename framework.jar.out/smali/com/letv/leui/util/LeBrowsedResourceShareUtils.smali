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
.field private static final EUI_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.eui"

.field private static final FEATURE_MAX:Ljava/lang/String; = "share.max.share_show_max_logo"

.field private static final FEATURE_MAX_PLUS:Ljava/lang/String; = "share.max.share_show_max_plus_logo"

.field private static final FEATURE_PRO:Ljava/lang/String; = "share.pro.share_show_pro_logo"

.field private static final FEATURE_S1:Ljava/lang/String; = "share.show_s1_logo"

.field private static final FEATURE_S2:Ljava/lang/String; = "share.show_s2_logo"

.field private static final FEATURE_X2:Ljava/lang/String; = "share.show_x2_logo"

.field private static final FEATURE_X3:Ljava/lang/String; = "share.x3.share_show_x3_logo"

.field private static final FEATURE_X6:Ljava/lang/String; = "share.show_x6_logo"

.field private static final FEATURE_X7:Ljava/lang/String; = "share.show_x7_logo"

.field private static final FEATURE_X7_PLUS:Ljava/lang/String; = "share.show_x7plus_logo"

.field private static final FEATURE_ZL1:Ljava/lang/String; = "share.show_zl1_logo"

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

.field private static final X6M_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6m"

.field private static final X6PLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6pro"

.field private static final X6_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6"

.field private static final X7PLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x7plus"

.field private static final X7_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.dual3"

.field private static final ZL1_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.zl1"

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

    .line 61
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

    .line 57
    return-void
.end method

.method private static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 516
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-object v7

    .line 517
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 520
    .local v7, "data":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 521
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 522
    :cond_2
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 524
    :cond_3
    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
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

    .line 526
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 529
    .local v9, "index":I
    const/4 v0, -0x1

    if-le v9, v0, :cond_4

    .line 530
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 533
    .end local v9    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 537
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getSharePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 467
    const-string v0, ""

    .line 468
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.pro.share_show_pro_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const-string v0, "com.le.share.pro"

    .line 505
    :goto_0
    return-object v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.max.share_show_max_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    invoke-static {}, Lcom/letv/leui/util/LeThemeUtils;->getThemeColor()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 473
    const-string v0, "com.letv.android.share.pink.max"

    goto :goto_0

    .line 475
    :cond_1
    const-string v0, "com.le.share.max"

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.max.share_show_max_plus_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    const-string v0, "com.le.share.maxplus"

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.x3.share_show_x3_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 480
    const-string v0, "com.letv.android.share.le1s"

    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x6_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 482
    invoke-static {}, Lcom/letv/leui/util/LeProductConfig;->getProductConfigType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 483
    const-string v0, "com.le.share.x6pro"

    goto :goto_0

    .line 484
    :cond_5
    invoke-static {}, Lcom/letv/leui/util/LeProductConfig;->getProductConfigType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 485
    const-string v0, "com.le.share.x6m"

    goto :goto_0

    .line 487
    :cond_6
    const-string v0, "com.le.share.x6"

    goto :goto_0

    .line 489
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_s2_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 491
    const-string v0, "com.le.share.x6"

    goto :goto_0

    .line 492
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x2_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 493
    const-string v0, "com.le.share.x2"

    goto :goto_0

    .line 494
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_s1_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 495
    const-string v0, "com.le.share.preleading"

    goto/16 :goto_0

    .line 496
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x7_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 497
    const-string v0, "com.le.share.dual3"

    goto/16 :goto_0

    .line 498
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_x7plus_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 499
    const-string v0, "com.le.share.x7plus"

    goto/16 :goto_0

    .line 500
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "share.show_zl1_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 501
    const-string v0, "com.le.share.zl1"

    goto/16 :goto_0

    .line 503
    :cond_d
    const-string v0, "com.le.share.eui"

    goto/16 :goto_0
.end method

.method private static outputLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
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

    .line 351
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 353
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :cond_0
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 361
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 362
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_1
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 370
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 380
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 381
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 382
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "imagePath":Ljava/lang/String;
    const-string v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_3
    if-nez v1, :cond_7

    .line 388
    const-string v2, " Convert string to uri failed! "

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 453
    .end local v1    # "imagePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 356
    :cond_4
    const-string v2, " the value of LeResourceType.leText must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 357
    goto :goto_0

    .line 365
    :cond_5
    const-string v2, " the value of LeResourceType.leWebUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 366
    goto :goto_0

    .line 376
    :cond_6
    const-string v2, " the value of LeResourceType.leBitmap must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 377
    goto :goto_0

    .line 391
    .restart local v1    # "imagePath":Ljava/lang/String;
    :cond_7
    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 392
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    :cond_8
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 401
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 402
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    :cond_a
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 410
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 411
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    :cond_b
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 419
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 420
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    :cond_c
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 428
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 429
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :cond_d
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 437
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 438
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_e
    :goto_1
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 445
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 446
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    :cond_f
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 396
    :cond_10
    const-string v2, " the value of LeResourceType.leImagePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 397
    goto/16 :goto_0

    .line 405
    :cond_11
    const-string v2, " the value of LeResourceType.leTitle must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 406
    goto/16 :goto_0

    .line 414
    :cond_12
    const-string v2, " the value of LeResourceType.leMusicUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 415
    goto/16 :goto_0

    .line 423
    :cond_13
    const-string v2, " the value of LeResourceType.leVideoUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 424
    goto/16 :goto_0

    .line 432
    :cond_14
    const-string v2, " the value of LeResourceType.leFilePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    move v2, v3

    .line 433
    goto/16 :goto_0

    .line 441
    :cond_15
    const-string v2, " the value of LeResourceType.packageName must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    goto :goto_1

    .line 449
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
    .line 76
    .local p2, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "leshare.enable_share_by_sharesdk"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 77
    const/16 v18, 0x0

    .line 346
    :goto_0
    return v18

    .line 80
    :cond_0
    if-eqz p1, :cond_1

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 81
    :cond_1
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "Type should not be empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/16 v18, 0x0

    goto :goto_0

    .line 85
    :cond_2
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 86
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 87
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

    .line 88
    check-cast v16, Ljava/lang/String;

    .line 89
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

    .line 90
    .local v13, "pn":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 91
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

    .line 92
    const/16 v18, 0x0

    goto :goto_0

    .line 89
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 99
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "pn":Ljava/lang/String;
    .end local v16    # "targetPackageName":Ljava/lang/String;
    :cond_4
    const/4 v14, -0x1

    .line 101
    .local v14, "resourceId":I
    const-string v11, ""

    .line 102
    .local v11, "linkedUrl":Ljava/lang/String;
    const-string v7, ""

    .line 103
    .local v7, "imageUrl":Ljava/lang/String;
    const/4 v15, 0x0

    .line 112
    .local v15, "supportLinkcard":Z
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 113
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 114
    .restart local v12    # "obj":Ljava/lang/Object;
    if-eqz v12, :cond_5

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 115
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "The type of leLinkUrl should be string."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 117
    :cond_5
    if-eqz v12, :cond_6

    move-object v11, v12

    .line 118
    check-cast v11, Ljava/lang/String;

    .line 121
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_6
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 122
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 123
    .restart local v12    # "obj":Ljava/lang/Object;
    if-eqz v12, :cond_7

    instance-of v0, v12, Ljava/lang/String;

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 124
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "The type of leImagePath should be string."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 126
    :cond_7
    if-eqz v12, :cond_8

    move-object v7, v12

    .line 127
    check-cast v7, Ljava/lang/String;

    .line 130
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

    .line 131
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 132
    const-string v18, "http"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 133
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "web page url should start wtih \'http\' or \'https\'."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 136
    :cond_9
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v14, 0x3

    .line 181
    :cond_a
    :goto_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_16

    .line 182
    const-string v18, "No match share type found!"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 183
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 138
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

    .line 139
    :cond_c
    const-string v18, "text resource is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 140
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 142
    :cond_d
    const/4 v14, 0x1

    goto :goto_2

    .line 145
    :cond_e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 146
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

    .line 147
    const-string v18, "image resource is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 148
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 150
    :cond_f
    const/4 v14, 0x2

    goto :goto_2

    .line 152
    :cond_10
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 153
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 154
    const-string v18, "audio url is null !"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 155
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 158
    :cond_11
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, p0

    if-eq v0, v1, :cond_12

    .line 159
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_12
    const/4 v14, 0x4

    goto/16 :goto_2

    .line 163
    :cond_13
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 164
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

    .line 165
    :cond_14
    const-string v18, "video url is null or can not be local resource"

    invoke-static/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 166
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 168
    :cond_15
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v14, 0x5

    goto/16 :goto_2

    .line 186
    :cond_16
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, "intent":Landroid/content/Intent;
    invoke-static/range {p3 .. p3}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getSharePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "leSharePackageName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 345
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "Only support WeiXin, Weibo or QQ at present."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 191
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

    .line 192
    .local v4, "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_17

    .line 194
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 196
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

    .line 199
    :cond_18
    const-string v17, ""

    .line 200
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

    .line 201
    :cond_19
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
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

    .line 207
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

    .line 217
    :goto_3
    if-nez v15, :cond_1c

    .line 218
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

    .line 219
    const/4 v14, 0x0

    .line 221
    :cond_1c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .end local v17    # "textStr":Ljava/lang/String;
    :cond_1d
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 209
    .restart local v17    # "textStr":Ljava/lang/String;
    :cond_1e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 226
    .end local v17    # "textStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 227
    .local v5, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 232
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, p0

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 233
    const-string v18, "isFriendGroup"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
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

    .line 238
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_20

    .line 240
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 235
    .end local v4    # "component":Landroid/content/ComponentName;
    :cond_1f
    const-string v18, "isFriendGroup"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 242
    .restart local v4    # "component":Landroid/content/ComponentName;
    :cond_20
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 246
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

    .line 247
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v14, v0, :cond_24

    .line 249
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

    .line 250
    :cond_21
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "video url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 253
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

    .line 255
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

    .line 256
    :cond_23
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_25

    .line 261
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 264
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

    .line 265
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

    .line 266
    :cond_27
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "webPage url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 270
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

    .line 271
    :cond_29
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_2a
    :goto_6
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 303
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 274
    :cond_2b
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_2d

    .line 275
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

    .line 276
    :cond_2c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "image url is empty for qq image share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 279
    :cond_2d
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v14, v0, :cond_34

    .line 280
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

    .line 281
    :cond_2e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
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

    .line 285
    :cond_30
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "target url is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 288
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

    .line 291
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

    .line 292
    :cond_32
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "music url is empty for qq music share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
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

    .line 295
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

    .line 298
    :cond_34
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "No support for other types for qq"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 305
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

    .line 306
    .restart local v4    # "component":Landroid/content/ComponentName;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 307
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v14, v0, :cond_39

    .line 308
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

    .line 309
    :cond_35
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "video url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 312
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

    .line 314
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

    .line 315
    :cond_37
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    :cond_38
    :goto_7
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_3d

    .line 331
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 318
    :cond_39
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v14, v0, :cond_38

    .line 319
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

    .line 320
    :cond_3a
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "music url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 323
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

    .line 325
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

    .line 326
    :cond_3c
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual/range {v18 .. v18}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v18

    const-string v19, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 333
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

    .line 334
    :cond_3e
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "webPage url is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 337
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

    .line 338
    :cond_40
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string v19, "title is empty for qq imageAndText share"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v18, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string v19, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_41
    const-string v18, "dataType"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 189
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
