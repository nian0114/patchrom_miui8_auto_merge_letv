.class public Lcom/letv/leui/util/LeResolveUtils;
.super Ljava/lang/Object;
.source "LeResolveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeResolveUtils$UV;
    }
.end annotation


# static fields
.field public static final APP_COUNTS:Ljava/lang/String; = "app_counts"

.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.leShare"

.field public static final BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

.field public static final DB_TABLE:Ljava/lang/String; = "leShareTable"

.field private static final DEBUG:Z = false

.field public static final EMAIL:Ljava/lang/String; = "com.android.email.activity.setup.AccountSetupBasics"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LEPAI:Ljava/lang/String; = "LePai"

.field public static final LE_PAI_SHARE_DES:Ljava/lang/String; = "lepaiShareDes"

.field public static final LE_PAI_SHARE_TEXT:Ljava/lang/String; = "lepaiShareText"

.field public static final LE_SHARE_APP_TAG:Ljava/lang/String; = "leShareAppTag"

.field public static final LE_SHARE_BITMAP_KEY:Ljava/lang/String; = "leBitmapKey"

.field public static final LE_SHARE_BUNDLE_KEY:Ljava/lang/String; = "leBundleKey"

.field public static final LE_SHARE_NIGHT_MODE:Ljava/lang/String; = "leShareIsNightMode"

.field public static final LE_SHARE_WEB_LINK_URL:Ljava/lang/String; = "leshareWebLinkUrl"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MMS:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field public static final PLAT_ID_QQ:I = 0x3

.field public static final PLAT_ID_QQ_ZONE:I = 0x4

.field public static final PLAT_ID_SINA:I = 0x0

.field public static final PLAT_ID_TENTCENT_FRIEND:I = 0x2

.field public static final PLAT_ID_TENTCENT_SEND_FRIEND:I = 0x1

.field public static final QQ:Ljava/lang/String; = "com.tencent.mobileqq.activity.JumpActivity"

.field public static final QQ_PLATFORM:I = 0x3

.field public static final QQ_ZONE:Ljava/lang/String; = "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

.field public static final QQ_ZONE_PLATFORM:I = 0x4

.field private static final SEND_SHARE_ACTION:Ljava/lang/String; = "com.letv.leshare.callback"

.field private static final SEND_SHARE_ACTION_NOTE:Ljava/lang/String; = "com.letv.android.note.ACTION_SHARE_PICTURE_TO_WEIBO"

.field public static final SHARE_TEXT_BEYOND_140_ACTION:Ljava/lang/String; = "com.letv.android.note.ACTION_SHARE_PICTURE"

.field public static final SHARE_TEXT_BEYOND_140_PLAT_ID:Ljava/lang/String; = "com.letv.android.extra.WHICH_APP_TO_SHARE"

.field private static final SHARE_TEXT_LENGTH_MAX:I = 0x8c

.field public static final SINA_PLATFORM:I = 0x2

.field public static final SINA_WEIBO:Ljava/lang/String; = "com.sina.weibo.ComposerDispatchActivity"

.field public static final SINA_WEIBO_EDIT:Ljava/lang/String; = "com.sina.weibo.EditActivity"

.field public static final SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field private static final TAG:Ljava/lang/String; = "LeResolveUtils"

.field public static final TENCENT_MM_FRIEND_PLATFORM:I = 0x1

.field public static final TENCENT_MM_SEND_FRIEND_PLATFORM:I = 0x0

.field public static final TENCENT_SHARE_IMGUI:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final TENCENT_SHARE_TO_TIME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field public static final mFourItemRatio:I = 0x13aa6

.field public static mLePaikeyQqZone:Ljava/lang/String; = null

.field public static mLePaikeyWeixin:Ljava/lang/String; = null

.field public static mLePaikeyWeixinMoment:Ljava/lang/String; = null

.field public static mLePaikeyqq:Ljava/lang/String; = null

.field public static mLePaikeyweibo:Ljava/lang/String; = null

.field public static final mOrderBy:Ljava/lang/String; = "app_counts DESC"

.field public static final mPriorShareApp:[Ljava/lang/String;

.field public static mShareLepaiKey:[Ljava/lang/String; = null

.field public static final mThreeItemRatio:I = 0x1000e

.field public static final mTwoItemRatio:I = 0xd8fe

.field public static final mUrl:Ljava/lang/String; = "content://com.android.leShare/leShareTable"

.field public static final mainShareAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mm.ui.tools.ShareImgUI"

    aput-object v1, v0, v3

    const-string v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    aput-object v1, v0, v4

    const-string v1, "com.sina.weibo.ComposerDispatchActivity"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    aput-object v1, v0, v6

    const-string v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.mms.ui.ComposeMessageActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.email.activity.setup.AccountSetupBasics"

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "qq"

    aput-object v1, v0, v3

    const-string v1, "qq_zone"

    aput-object v1, v0, v4

    const-string v1, "weixin_moment"

    aput-object v1, v0, v5

    const-string v1, "weixin_friends"

    aput-object v1, v0, v6

    const-string v1, "weibo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mShareLepaiKey:[Ljava/lang/String;

    .line 85
    const-string v0, "weixin_friends"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    .line 86
    const-string v0, "weixin_moment"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    .line 87
    const-string v0, "weibo"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    .line 88
    const-string v0, "qq"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    .line 89
    const-string v0, "qq_zone"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    aput-object v1, v0, v3

    const-string v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    aput-object v1, v0, v4

    const-string v1, "com.tencent.mm.ui.tools.ShareImgUI"

    aput-object v1, v0, v5

    const-string v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    aput-object v1, v0, v6

    const-string v1, "com.sina.weibo.EditActivity"

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    return-void
.end method

.method public static addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "layoutItemCounts"    # I
    .param p2, "fiveLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 105
    const/4 v2, -0x1

    .line 106
    .local v2, "mLayoutResId":I
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 124
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string v3, "leshare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addShareLayoutFive_mLayoutResId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">>fiveLayout is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    .local v1, "itemView":Landroid/view/View;
    return-void

    .line 108
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "itemView":Landroid/view/View;
    :pswitch_0
    const v2, 0x10900e1

    .line 109
    goto :goto_0

    .line 111
    :pswitch_1
    const v2, 0x10900e5

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    const v2, 0x10900e4

    .line 115
    goto :goto_0

    .line 117
    :pswitch_3
    const v2, 0x10900e3

    .line 118
    goto :goto_0

    .line 120
    :pswitch_4
    const v2, 0x10900e2

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getFilePath(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 697
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 700
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 704
    .end local v0    # "filePath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGridViewItemGap(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "gap":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 496
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 498
    .local v1, "screenHeight":I
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 499
    move v2, v1

    .line 501
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 502
    .local v3, "tabWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 503
    .local v4, "tabWidthGap":I
    mul-int/lit8 v6, v4, 0x2

    sub-int v5, v3, v6

    .line 504
    .local v5, "tabwidthTrue":I
    mul-int/lit8 v6, v5, 0x5

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x6

    .line 505
    mul-int/lit8 v6, v4, 0x2

    sub-int/2addr v0, v6

    .line 506
    return v0
.end method

.method public static getGridViewMagin(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "magin":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 480
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 481
    .local v1, "screenHeight":I
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 482
    move v2, v1

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501fa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 485
    .local v3, "tabWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501fb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 486
    .local v4, "tabWidthGap":I
    mul-int/lit8 v6, v4, 0x2

    sub-int v5, v3, v6

    .line 487
    .local v5, "tabwidthTrue":I
    mul-int/lit8 v6, v5, 0x5

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x6

    .line 488
    sub-int/2addr v0, v4

    .line 489
    return v0
.end method

.method public static getPriorShareApp(Landroid/app/Activity;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "PriorShareAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "leshare.enable_share_by_sharesdk"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 410
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 415
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 416
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 417
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 418
    .local v5, "tempActivityName":Ljava/lang/String;
    const-string v6, "leshare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tempActivityName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v6, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 420
    sget-object v6, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 421
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    const-string v6, "com.sina.weibo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 424
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v3    # "j":I
    .end local v5    # "tempActivityName":Ljava/lang/String;
    :cond_3
    const-string v6, "leshare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PriorShareAppList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    return-object v0
.end method

.method public static getTextStringLenth(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 213
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method public static gvShowAnim(ILandroid/widget/LinearLayout;)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "gvHeight"    # I
    .param p1, "mGvAnimLayout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 218
    const/4 v2, 0x2

    new-array v2, v2, [I

    neg-int v3, p0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 219
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 221
    .local v1, "interpolater":Landroid/view/animation/DecelerateInterpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    new-instance v2, Lcom/letv/leui/util/LeResolveUtils$1;

    invoke-direct {v2, p1}, Lcom/letv/leui/util/LeResolveUtils$1;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    return-object v0
.end method

.method public static isScreenChange(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 204
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSingleImageFile(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 709
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 710
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 711
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 712
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 713
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 714
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 715
    .local v1, "size":I
    if-le v1, v4, :cond_1

    .line 726
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "size":I
    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v1    # "size":I
    .restart local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1
    move v3, v4

    .line 718
    goto :goto_0

    .end local v1    # "size":I
    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_2
    move v3, v4

    .line 721
    goto :goto_0
.end method

.method public static isWeiboOrWeChatTextShare(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)I
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    const/4 v2, -0x1

    .line 439
    .local v2, "platId":I
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 440
    .local v0, "activityName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 442
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const-string v3, "com.sina.weibo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    :cond_1
    const/4 v2, 0x0

    .line 445
    :cond_2
    if-eqz v0, :cond_3

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    const/4 v2, 0x1

    .line 448
    :cond_3
    if-eqz v0, :cond_4

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 449
    const/4 v2, 0x2

    .line 451
    :cond_4
    return v2
.end method

.method public static matchApp([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "appNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "mSpecialTitleArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "mSpecialLogoArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "mAppStringArraysNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 261
    aget-object v1, p0, v0

    const-string v2, "contact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const v1, 0x1040641

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const v1, 0x1080506

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v1, "contact"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    aget-object v1, p0, v0

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const v1, 0x1040642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const v1, 0x1080651

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v1, "wallpaper"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_2
    aget-object v1, p0, v0

    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const v1, 0x104064a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const v1, 0x1080636

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v1, "download"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_3
    aget-object v1, p0, v0

    const-string v2, "detail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    const v1, 0x1040649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const v1, 0x1080635

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v1, "detail"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_4
    aget-object v1, p0, v0

    const-string v2, "ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    const v1, 0x1040643

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const v1, 0x108064b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v1, "ppt"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 281
    :cond_5
    aget-object v1, p0, v0

    const-string v2, "collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    const v1, 0x104063c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const v1, 0x1080505

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v1, "collection"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 285
    :cond_6
    aget-object v1, p0, v0

    const-string v2, "addDesk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    const v1, 0x104063d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const v1, 0x108064d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v1, "addDesk"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 289
    :cond_7
    aget-object v1, p0, v0

    const-string v2, "copy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 290
    const v1, 0x104063e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const v1, 0x1080632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v1, "copy"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 293
    :cond_8
    aget-object v1, p0, v0

    const-string v2, "save"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 294
    const v1, 0x1040640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const v1, 0x108064c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v1, "save"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 297
    :cond_9
    aget-object v1, p0, v0

    const-string v2, "voice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 298
    const v1, 0x10406f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const v1, 0x1080658

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v1, "voice"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 301
    :cond_a
    aget-object v1, p0, v0

    const-string v2, "dlna"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    const v1, 0x104064e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const v1, 0x108064e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v1, "dlna"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 305
    :cond_b
    aget-object v1, p0, v0

    const-string v2, "addHome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const v1, 0x104064f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const v1, 0x108062b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v1, "addHome"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 312
    :cond_c
    return-void
.end method

.method public static replaceChar(Ljava/lang/CharSequence;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 235
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "textLabel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 237
    .local v3, "text_one":Ljava/lang/String;
    const/4 v5, 0x0

    .line 238
    .local v5, "text_two":Ljava/lang/String;
    const/4 v4, 0x0

    .line 239
    .local v4, "text_three":Ljava/lang/String;
    const/4 v2, 0x0

    .line 240
    .local v2, "text_four":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040645

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040646

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040647

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040648

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "replaceChar":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 246
    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 247
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    const-string v6, ""

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "isShareSdk"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 512
    if-eqz p0, :cond_0

    const-string v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p0, :cond_4

    const-string v1, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 513
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.letv.leshare.callback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v1, "realCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 516
    const-string v1, "value"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    if-eqz p3, :cond_2

    .line 518
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    :cond_2
    if-eqz p4, :cond_3

    .line 522
    const-string v1, "pageName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    :cond_3
    const-string v1, "sendShareBroadCast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShareSdk is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>appName is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method public static setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 24
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "shareLayout"    # Landroid/widget/LinearLayout;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-nez v19, :cond_1

    .line 200
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 132
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 133
    .local v14, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 134
    .local v13, "screenHeight":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 135
    move v14, v13

    .line 137
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fa

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 138
    .local v15, "tabWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 139
    .local v16, "tabWidthGap":I
    mul-int/lit8 v19, v16, 0x2

    sub-int v17, v15, v19

    .line 140
    .local v17, "tabwidthTrue":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 141
    .local v4, "count":I
    const/4 v5, 0x0

    .line 142
    .local v5, "end":I
    const/4 v7, 0x0

    .line 143
    .local v7, "gap":I
    const-wide/16 v10, 0x0

    .line 144
    .local v10, "ratio":D
    packed-switch v4, :pswitch_data_0

    .line 171
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_0

    .line 172
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 173
    .local v18, "view":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    .local v9, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v9, :cond_3

    .line 175
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, -0x2

    move/from16 v0, v19

    invoke-direct {v9, v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 176
    .restart local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 178
    :cond_3
    if-nez v8, :cond_5

    .line 179
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 180
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 190
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 191
    .local v6, "fontScale":F
    float-to-double v0, v6

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v19, v20, v22

    if-lez v19, :cond_4

    .line 192
    const-string v19, "LeResolveUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fontScale is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501ff

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 195
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 171
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 146
    .end local v6    # "fontScale":F
    .end local v8    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "view":Landroid/view/View;
    :pswitch_0
    mul-int v19, v15, v4

    sub-int v19, v14, v19

    div-int/lit8 v5, v19, 0x2

    .line 147
    goto/16 :goto_0

    .line 149
    :pswitch_1
    mul-int v19, v17, v4

    sub-int v19, v14, v19

    div-int/lit8 v7, v19, 0x6

    .line 150
    sub-int v5, v7, v16

    .line 151
    mul-int/lit8 v19, v16, 0x2

    sub-int v7, v7, v19

    .line 152
    goto/16 :goto_0

    .line 154
    :pswitch_2
    const-wide v10, 0x3fe1c6a7ef9db22dL    # 0.5555

    .line 155
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v10

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 156
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 157
    goto/16 :goto_0

    .line 159
    :pswitch_3
    const-wide v10, 0x3fe4f9db22d0e560L    # 0.6555

    .line 160
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v10

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 161
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_4
    const-wide v10, 0x3fe9c6a7ef9db22dL    # 0.8055

    .line 165
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v10

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 166
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 167
    goto/16 :goto_0

    .line 181
    .restart local v8    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v18    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_6

    .line 182
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 184
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 186
    :cond_6
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 187
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static shareFileNoExit(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 664
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 665
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 667
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 693
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 673
    const/4 v4, 0x0

    .line 675
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "r"

    invoke-virtual {v8, p0, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 676
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v5, "stream":Ljava/io/InputStream;
    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stream":Ljava/io/InputStream;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 686
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move v6, v7

    .line 689
    goto :goto_0

    .line 687
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/SecurityException;
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 687
    :catch_4
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 686
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 689
    :cond_3
    :goto_2
    throw v6

    .line 687
    :catch_5
    move-exception v0

    .line 688
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "stream":Ljava/io/InputStream;
    :cond_4
    move v6, v7

    .line 693
    goto :goto_0
.end method

.method public static shareTextBeyondMax(Ljava/lang/String;)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 455
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_2

    :cond_0
    move v4, v5

    .line 473
    :cond_1
    :goto_0
    return v4

    .line 458
    :cond_2
    const-wide/16 v2, 0x0

    .line 459
    .local v2, "len":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 460
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 461
    .local v1, "temp":I
    if-lez v1, :cond_3

    const/16 v6, 0x7f

    if-ge v1, v6, :cond_3

    .line 462
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    .line 459
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    goto :goto_2

    .line 470
    .end local v1    # "temp":I
    :cond_4
    const-wide v6, 0x4061800000000000L    # 140.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_1

    move v4, v5

    .line 473
    goto :goto_0
.end method

.method public static startNoteActivity(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "fromPackageName"    # Ljava/lang/String;
    .param p1, "platId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "mShareDesc"    # Ljava/lang/String;

    .prologue
    .line 530
    const-string v2, "com.letv.android.note"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 531
    const-string v2, "leshare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromPackageName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>platId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 533
    .local v0, "noteIntent":Landroid/content/Intent;
    const-string v2, "com.letv.android.note.ACTION_SHARE_PICTURE_TO_WEIBO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 535
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 536
    .local v1, "stream":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 537
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    .end local v1    # "stream":Landroid/net/Uri;
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 542
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 549
    .end local v0    # "noteIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p5, "mShareTitle"    # Ljava/lang/String;
    .param p6, "mShareDesc"    # Ljava/lang/String;
    .param p7, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "mBitmapFileUrl"    # Ljava/lang/String;
    .param p9, "mPackageName"    # Ljava/lang/String;
    .param p10, "mPageName"    # Ljava/lang/String;
    .param p11, "mTargetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "mLePaiTitleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "mLePaiDesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 316
    .local v1, "activityName":Ljava/lang/String;
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 317
    .local v4, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 318
    .local v2, "isLinkCard":Z
    const/4 v5, -0x1

    .line 319
    .local v5, "platId":I
    if-eqz v1, :cond_7

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 320
    const/4 v5, 0x1

    .line 321
    if-eqz p3, :cond_0

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 322
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 324
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 325
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .line 361
    .restart local p6    # "mShareDesc":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v9, -0x1

    if-eq v5, v9, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MULTIPLE"

    if-eq v9, v10, :cond_12

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "mineType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 366
    .local v8, "url":Ljava/lang/String;
    if-nez v8, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 367
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 368
    .local v7, "stream":Landroid/net/Uri;
    if-eqz v7, :cond_11

    .line 371
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p8

    .line 377
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v6, "shareMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p7

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p8

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    if-eqz v8, :cond_3

    .line 381
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v9, "leshare"

    const-string v10, "have linkUrl"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p5

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p6

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 387
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p9

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_4
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 390
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p10

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_5
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 394
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p11

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_6
    const-string v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "targetPackageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p11

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intentType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBitmap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LeResourceType.leLinkUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">>LeResourceType.leTitle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LeResourceType.leText="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mBitmapFileUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {v5, v3, v6, p0}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->shareBrowsedResourcesByIntent(ILjava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v9

    .line 403
    .end local v3    # "mineType":Ljava/lang/String;
    .end local v6    # "shareMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    .end local v8    # "url":Ljava/lang/String;
    :goto_2
    return v9

    .line 327
    :cond_7
    if-eqz v1, :cond_9

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 328
    const/4 v5, 0x2

    .line 329
    if-eqz p3, :cond_8

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 330
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 332
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 333
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .restart local p5    # "mShareTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 335
    :cond_9
    if-eqz v1, :cond_a

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    if-eqz v4, :cond_d

    const-string v9, "com.sina.weibo"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 336
    :cond_b
    const/4 v5, 0x0

    .line 337
    const/4 v2, 0x1

    .line 338
    if-eqz p3, :cond_c

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 339
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 341
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_c
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 342
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 344
    :cond_d
    if-eqz v1, :cond_f

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 345
    const/4 v5, 0x3

    .line 346
    if-eqz p3, :cond_e

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 347
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 349
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_e
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 350
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 352
    :cond_f
    if-eqz v1, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 353
    const/4 v5, 0x4

    .line 354
    if-eqz p3, :cond_10

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 355
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 357
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_10
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 358
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 373
    .restart local v3    # "mineType":Ljava/lang/String;
    .restart local v7    # "stream":Landroid/net/Uri;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_11
    const-string v9, "leshareWebLinkUrl"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 374
    const-string v9, "leshareWebLinkUrl"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 403
    .end local v3    # "mineType":Ljava/lang/String;
    .end local v7    # "stream":Landroid/net/Uri;
    .end local v8    # "url":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_2
.end method
