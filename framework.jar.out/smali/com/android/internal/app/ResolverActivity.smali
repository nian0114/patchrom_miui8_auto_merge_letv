.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private fromPackageName:Ljava/lang/String;

.field private gvHeight:I

.field private isColse:Z

.field public isNightMode:Z

.field private layout:Landroid/widget/RelativeLayout;

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field private mAlwaysLinearLayout:Landroid/widget/LinearLayout;

.field private mAlwaysUseOption:Z

.field private mAppStringArrays:[Ljava/lang/String;

.field private mAppStringArraysNew:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTag:Ljava/lang/String;

.field private mAwalysLayout:Landroid/widget/LinearLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFileUrl:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mFiveSpeicalViewItem:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mGvAnimLayout:Landroid/widget/LinearLayout;

.field private mGvLayout:Landroid/widget/LinearLayout;

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsKeyguardLocked:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mLayoutLessFive:Landroid/widget/LinearLayout;

.field private mLayoutResId:I

.field private mLayoutSpecial:Landroid/widget/LinearLayout;

.field private mLePaiDesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLePaiTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkUrl:Ljava/lang/String;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRealLayout:Landroid/widget/LinearLayout;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mScroller:Landroid/widget/ScrollView;

.field private mShareCancelBtn:Landroid/widget/Button;

.field private mShareDesc:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mSpecialDivider:Landroid/view/View;

.field private mSpecialLogoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialTitleArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTv:Landroid/widget/TextView;

.field private resolver:Landroid/content/ContentResolver;

.field private reverse:Z

.field private showMoreIV:Landroid/widget/ImageView;

.field private title:Ljava/lang/CharSequence;

.field private uvReportIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 130
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 159
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2165
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutResId:I

    .line 2173
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2176
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    .line 2183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    .line 2184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    .line 2194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2201
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 2642
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reSortList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->reflashLayoutLessFive()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reflashGV(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    return-object v0
.end method

.method private deleteDB(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2639
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2640
    return-void
.end method

.method private finishAnima()V
    .locals 2

    .prologue
    .line 2545
    const v0, 0x10a003a

    const v1, 0x10a003b

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 2548
    return-void
.end method

.method private getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mineType"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 2607
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "app_counts"

    aput-object v1, v2, v0

    .line 2608
    .local v2, "projectiong":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mime_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2609
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "app_counts DESC"

    .line 2610
    .local v5, "order":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2612
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2613
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2614
    const-string v0, "app_counts"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2615
    .local v6, "counts":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2616
    .local v8, "id":I
    add-int/lit8 v6, v6, 0x1

    .line 2617
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2618
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "app_counts"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-direct {p0, p1, v10, v8}, Lcom/android/internal/app/ResolverActivity;->updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2625
    .end local v6    # "counts":I
    .end local v8    # "id":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v7, :cond_0

    .line 2626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2630
    :cond_0
    return-void

    .line 2621
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    const-string v0, "1"

    invoke-direct {v9, p0, p2, p3, v0}, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    .local v9, "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2625
    .end local v9    # "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 2626
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getLetvIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2217
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2218
    const-string v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2219
    const-string v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppTag:Ljava/lang/String;

    .line 2221
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2222
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    .line 2223
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/letv/leui/util/LeResolveUtils;->matchApp([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2225
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2226
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    .line 2228
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2229
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    .line 2231
    :cond_3
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2232
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2233
    .local v0, "bis":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2235
    .end local v0    # "bis":[B
    :cond_4
    const-string v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2236
    const-string v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leBitmapKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2238
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2239
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    .line 2241
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2242
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    .line 2244
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2245
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_9

    .line 2246
    const-string v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2247
    const-string v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2249
    :cond_8
    const-string v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2250
    const-string v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2253
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2254
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 2256
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    .line 2257
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    .line 2258
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLetvIntent packageName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pageName is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_b
    return-void
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 478
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 683
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 684
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v5

    .line 689
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 690
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 691
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 692
    const/4 v5, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private initFiveLayoutContent(Landroid/widget/LinearLayout;I)V
    .locals 24
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "itemCounts"    # I

    .prologue
    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v16

    .line 2390
    .local v16, "resolveItemSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501fb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v9, v0

    .line 2391
    .local v9, "gvMaxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2392
    .local v6, "fontScale":F
    float-to-double v0, v6

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 2393
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501fe

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    mul-int/lit8 v9, v20, 0x2

    .line 2395
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501fd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2396
    .local v18, "titleHeight":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewMagin(Landroid/content/Context;)I

    move-result v8

    .line 2397
    .local v8, "gridViewMagin":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewItemGap(Landroid/content/Context;)I

    move-result v7

    .line 2398
    .local v7, "gridViewItemDividerPadding":I
    const/4 v4, 0x2

    .line 2399
    .local v4, "Offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 2400
    .local v17, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 2401
    .local v15, "params1":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 2402
    mul-int/lit8 v20, v18, 0x2

    sub-int v20, v17, v20

    sub-int v20, v20, v9

    move/from16 v0, v20

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2406
    :goto_0
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v9, :cond_1

    .line 2407
    iput v9, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2409
    :cond_1
    iput v8, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2410
    sub-int v20, v8, v7

    add-int v20, v20, v4

    move/from16 v0, v20

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2413
    const/16 v20, 0x9

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2415
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int v20, v9, v18

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2416
    neg-int v0, v9

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2418
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2428
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const/16 v20, 0x5

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 2429
    const/16 p2, 0x4

    .line 2430
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x10204a5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x1080627

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x1080629

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2434
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x10204a2

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2435
    .local v19, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2436
    const-string v20, "#dfdfdf"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 2437
    .local v5, "blackTvColor":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const v21, 0x1080628

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2440
    .end local v5    # "blackTvColor":I
    :cond_3
    const v20, 0x1040639

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2441
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/android/internal/app/ResolverActivity$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$10;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2457
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_9

    .line 2458
    move v13, v10

    .line 2459
    .local v13, "j":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x10204a5

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2460
    .local v12, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x10204a2

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2461
    .restart local v19    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 2462
    const-string v20, "#dfdfdf"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 2463
    .restart local v5    # "blackTvColor":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2464
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x1080620

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2468
    .end local v5    # "blackTvColor":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v11

    .line 2469
    .local v11, "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-interface {v11}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2470
    instance-of v0, v11, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v20, v11

    check-cast v20, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v20

    if-nez v20, :cond_5

    .line 2473
    new-instance v21, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v20, v11

    check-cast v20, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2475
    :cond_5
    invoke-interface {v11}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/android/internal/app/ResolverActivity$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/internal/app/ResolverActivity$11;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2457
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 2404
    .end local v10    # "i":I
    .end local v11    # "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .end local v12    # "iv":Landroid/widget/ImageView;
    .end local v13    # "j":I
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_6
    mul-int/lit8 v20, v18, 0x2

    sub-int v20, v17, v20

    div-int/lit8 v21, v9, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 2420
    :cond_7
    const/16 v20, 0x5

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2422
    .restart local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v20, v9, 0x2

    add-int v20, v20, v18

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2423
    neg-int v0, v9

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    div-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2466
    .end local v14    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "i":I
    .restart local v12    # "iv":Landroid/widget/ImageView;
    .restart local v13    # "j":I
    .restart local v19    # "tv":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x1080621

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 2496
    .end local v12    # "iv":Landroid/widget/ImageView;
    .end local v13    # "j":I
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_9
    return-void
.end method

.method private initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V
    .locals 20
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p3, "defaultTitleRes"    # I
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 2264
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const v17, 0x10204a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    .line 2265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 2266
    const-string v17, "#dfdfdf"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 2267
    .local v4, "blackTvColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2269
    .end local v4    # "blackTvColor":I
    :cond_0
    const/4 v6, 0x0

    .line 2270
    .local v6, "intent":Landroid/content/Intent;
    if-nez p1, :cond_2

    .line 2271
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 2272
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "intent":Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .line 2273
    .restart local v6    # "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 2274
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2275
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2279
    .end local v3    # "action":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040365

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "shareTitle":Ljava/lang/String;
    move-object/from16 v17, p1

    .line 2280
    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2281
    if-eqz p4, :cond_2

    .line 2282
    const/16 p4, 0x0

    .line 2286
    .end local v16    # "shareTitle":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2287
    const v17, 0x1020453

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mRealLayout:Landroid/widget/LinearLayout;

    .line 2288
    const v17, 0x10204a0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    .line 2289
    const v17, 0x102049b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/app/ResolverActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v12

    .line 2298
    .local v12, "resolveItemSize":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2300
    .local v15, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2301
    .local v14, "screenHeight":I
    sub-int v17, v15, v14

    div-int/lit8 v7, v17, 0x2

    .line 2302
    .local v7, "layoutWidth":I
    const v17, 0x10204a6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2303
    .local v8, "leftLayout":Landroid/widget/LinearLayout;
    const v17, 0x10204a8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 2304
    .local v13, "rightLayout":Landroid/widget/LinearLayout;
    const v17, 0x102049b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2305
    .local v5, "centerLayout":Landroid/widget/RelativeLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-direct {v9, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2306
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2307
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2308
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-direct {v10, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2309
    .local v10, "params1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2310
    const v17, 0x10204a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    .line 2311
    const/16 v17, 0x5

    move/from16 v0, v17

    if-gt v12, v0, :cond_3

    if-lez v12, :cond_3

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 2313
    .local v11, "params3":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, -0x2

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2316
    .end local v11    # "params3":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v17, Lcom/android/internal/app/ResolverActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2322
    new-instance v17, Lcom/android/internal/app/ResolverActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2329
    .end local v5    # "centerLayout":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutWidth":I
    .end local v8    # "leftLayout":Landroid/widget/LinearLayout;
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "rightLayout":Landroid/widget/LinearLayout;
    .end local v14    # "screenHeight":I
    .end local v15    # "screenWidth":I
    :cond_4
    const v17, 0x10204a4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/GridView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const v18, 0x10204a1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    .line 2331
    const v17, 0x1020455

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    .line 2332
    const/16 v17, 0x5

    move/from16 v0, v17

    if-le v12, v0, :cond_5

    .line 2333
    const/4 v12, 0x5

    .line 2335
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v12, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x10900de

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/app/ResolverActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$8;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2359
    const v17, 0x102049d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    .line 2360
    const v17, 0x102049c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    .line 2361
    const v17, 0x1020383

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    .line 2362
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/app/ResolverActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$9;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2370
    const v17, 0x102049e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    .line 2371
    const v17, 0x102049f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 2373
    if-eqz p4, :cond_7

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2378
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_6

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->initSpecialLayoutContent(Landroid/widget/LinearLayout;)V

    .line 2386
    :cond_6
    return-void

    .line 2376
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSpecialLayoutContent(Landroid/widget/LinearLayout;)V
    .locals 9
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 2499
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2500
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2501
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0, v6, p1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2502
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 2504
    move v3, v1

    .line 2505
    .local v3, "j":I
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x10204a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2506
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x10204a2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2507
    .local v5, "tv":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v6, :cond_0

    .line 2508
    const-string v6, "#dfdfdf"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2509
    .local v0, "blackTvColor":I
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2511
    .end local v0    # "blackTvColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2512
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2513
    const v6, 0x1080637

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2514
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v6, :cond_1

    .line 2515
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2516
    const v6, 0x1080638

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2518
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2526
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2527
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/internal/app/ResolverActivity$12;

    invoke-direct {v7, p0, v3}, Lcom/android/internal/app/ResolverActivity$12;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2503
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2541
    .end local v1    # "i":I
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "j":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2654
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2655
    .local v1, "mineType":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android.intent.category.HOME"

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2656
    const-string v1, "android.intent.category.HOME"

    .line 2658
    :cond_0
    if-nez v1, :cond_1

    .line 2659
    const-string v1, "unknow"

    .line 2661
    :cond_1
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2662
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    return-void
.end method

.method private insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    .locals 4
    .param p1, "shareActivityInfo"    # Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    .prologue
    .line 2598
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2599
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    const-string v2, "app_name"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const-string v2, "app_counts"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppClickCounts:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    const-string v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2603
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2604
    return-void
.end method

.method private isHighLayerWindow()Z
    .locals 2

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .prologue
    .line 2121
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2122
    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private notifySystemUI()V
    .locals 2

    .prologue
    .line 2846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.letv.leshare.CLICKED_SHAREITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2847
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2848
    return-void
.end method

.method private reSortList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2551
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    move-object v11, p1

    .line 2552
    .local v11, "newResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2553
    .local v12, "pickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2554
    .local v13, "rePickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 2555
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2556
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    aget-object v1, v0, v8

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$900(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2558
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2554
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2555
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2563
    .end local v9    # "j":I
    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2564
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2565
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2564
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2568
    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "app_name"

    aput-object v1, v2, v0

    .line 2570
    .local v2, "projectiong":[Ljava/lang/String;
    const-string v3, "app_counts>\'2\'"

    .line 2571
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.leShare/leShareTable"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "app_counts DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2573
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2574
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 2575
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2576
    const-string v0, "app_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2577
    .local v6, "activityName":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 2578
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$900(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2579
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2580
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2577
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2574
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2584
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2585
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 2586
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2585
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2591
    .end local v10    # "k":I
    :cond_7
    if-eqz v7, :cond_8

    .line 2592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2595
    :cond_8
    return-void

    .line 2591
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 2592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private reflashGV(I)V
    .locals 7
    .param p1, "resolveItemSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 2694
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 2695
    .local v0, "gvMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2696
    .local v3, "titleHeight":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 2697
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2698
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2699
    .local v2, "params1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x9

    if-le p1, v4, :cond_1

    .line 2700
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2701
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2702
    add-int v4, v0, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2703
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2704
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2705
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2720
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 2707
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x5

    if-le p1, v4, :cond_2

    .line 2708
    div-int/lit8 v4, v0, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2709
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2710
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2711
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2712
    div-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2713
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 2715
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2716
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2717
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private reflashLayoutLessFive()V
    .locals 4

    .prologue
    .line 2678
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 2679
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2680
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 2681
    .local v0, "chindItemCounts":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 2682
    const/4 v0, 0x5

    .line 2684
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-static {p0, v0, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2685
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2686
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900de

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2688
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2689
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2691
    .end local v0    # "chindItemCounts":I
    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 2824
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2826
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2827
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2828
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2829
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2831
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1145
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 0
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 725
    return-void
.end method

.method private setBlackTheme()V
    .locals 8

    .prologue
    .line 2796
    const v6, 0x1020454

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2797
    .local v3, "view1":Landroid/view/View;
    const v6, 0x102045c

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2798
    .local v4, "view3":Landroid/view/View;
    const v6, 0x10204a3

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2799
    .local v5, "view4":Landroid/view/View;
    const-string v6, "#2d2d2d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2800
    .local v2, "blackViewColor":I
    const-string v6, "#202020"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2801
    .local v0, "blackBgColor":I
    const-string v6, "#dfdfdf"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 2802
    .local v1, "blackTvColor":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mRealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2803
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 2804
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2806
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2807
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2808
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    const v7, 0x1080620

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2809
    if-eqz v3, :cond_1

    .line 2810
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2812
    :cond_1
    if-eqz v4, :cond_2

    .line 2813
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2815
    :cond_2
    if-eqz v5, :cond_3

    .line 2816
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2818
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 2819
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2821
    :cond_4
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .prologue
    .line 505
    const/4 v4, -0x2

    if-eq p1, v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 507
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 508
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 509
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 511
    .local v0, "originIsManaged":Z
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    .line 512
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 513
    const v4, 0x104043f

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 518
    .end local v0    # "originIsManaged":Z
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_1
    return-void

    .line 509
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    .restart local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 515
    const v4, 0x1040440

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1
.end method

.method private showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platId"    # I
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "targetInfo"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 2726
    new-instance v4, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 2727
    .local v4, "mBottomSheetTextShare":Lcom/letv/leui/widget/LeBottomSheet;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104064e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2728
    .local v17, "textLongWeiboShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040650

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2729
    .local v15, "pictureShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104064f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2730
    .local v18, "textShare":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2731
    .local v16, "shareTitle":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2732
    move-object/from16 v16, v17

    .line 2737
    :goto_0
    const/4 v5, 0x5

    new-instance v6, Lcom/android/internal/app/ResolverActivity$13;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/android/internal/app/ResolverActivity$13;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    new-instance v7, Lcom/android/internal/app/ResolverActivity$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$14;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v16, v9, v10

    const/4 v10, 0x1

    aput-object v18, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x106000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    .line 2786
    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 2787
    new-instance v5, Lcom/android/internal/app/ResolverActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ResolverActivity$15;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2793
    return-void

    .line 2734
    :cond_0
    move-object/from16 v16, v15

    goto :goto_0
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 705
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 707
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 706
    :catch_0
    move-exception v1

    .line 707
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 2834
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2835
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2837
    :cond_0
    return-void
.end method

.method private updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "id"    # I

    .prologue
    .line 2633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2634
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2635
    .local v0, "update":I
    return-void
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 489
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 490
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 493
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 494
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 497
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z
    .locals 11
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1084
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    const v9, 0x10900e3

    .line 1090
    .local v9, "layoutId":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v7

    .line 1091
    .local v7, "count":I
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1094
    const/4 v0, 0x1

    .line 1119
    :goto_2
    return v0

    .line 1043
    .end local v7    # "count":I
    .end local v9    # "layoutId":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1087
    :cond_2
    const v9, 0x10900dd

    .restart local v9    # "layoutId":I
    goto :goto_1

    .line 1097
    .restart local v7    # "count":I
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1098
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    .line 1099
    .local v10, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1100
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1101
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1103
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1104
    const/4 v0, 0x1

    goto :goto_2

    .line 1107
    .end local v10    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_4
    if-lez v7, :cond_6

    .line 1108
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V

    .line 1116
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v0, :cond_5

    .line 1117
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setBlackTheme()V

    .line 1119
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1112
    :cond_6
    const v0, 0x1090143

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1113
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1114
    .local v8, "empty":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    return-object v0
.end method

.method dismiss()V
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 553
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2207
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2208
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->finishAnima()V

    .line 2209
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2213
    :cond_0
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 558
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 563
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 559
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    .line 485
    const v0, 0x1090143

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 823
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    .line 537
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 538
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 539
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 540
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 542
    :goto_1
    return-object v2

    .line 537
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .line 542
    .restart local v0    # "named":Z
    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    if-eqz v0, :cond_2

    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 569
    :try_start_0
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v5, :cond_1

    .line 570
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 571
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 598
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 575
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    .line 576
    .local v4, "iconRes":I
    if-eqz v4, :cond_2

    .line 577
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 580
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 581
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v4, v5, :cond_0

    .line 582
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/theme/LeIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v3

    .line 583
    .local v3, "haveThemplateRes":Z
    if-eqz v3, :cond_0

    .line 584
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 585
    .local v1, "drClip":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 586
    goto :goto_0

    .line 595
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drClip":Landroid/graphics/drawable/Drawable;
    .end local v3    # "haveThemplateRes":Z
    .end local v4    # "iconRes":I
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ResolverActivity"

    const-string v6, "Couldn\'t find resources for package"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1009
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 728
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 737
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 231
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 232
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 233
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 240
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 241
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 242
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 259
    .local v10, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 261
    const/16 v3, 0x30

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 266
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    .line 268
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getLetvIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/util/LeResolveUtils$UV;->getFromPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    .line 274
    const/4 v3, 0x1

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const v3, 0x103052a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 289
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :goto_1
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 433
    :cond_1
    :goto_2
    return-void

    .line 269
    :catch_0
    move-exception v11

    .line 270
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 292
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .line 301
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 302
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 304
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 305
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 307
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 308
    .local v9, "am":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 311
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 314
    .local v12, "referrerPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, p0, v4, v12}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 318
    .end local v12    # "referrerPackage":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x10100

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 341
    if-nez p3, :cond_3

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 393
    :cond_3
    const v3, 0x1020387

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 394
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 395
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v4, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 418
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 429
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver()V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    .line 315
    :catch_2
    move-exception v11

    .line 316
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 252
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 646
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 647
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 653
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 660
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver()V

    .line 661
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2668
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2669
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2672
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 1125
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    .line 1126
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    move-object v0, v3

    .line 1127
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1129
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1130
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1131
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1132
    if-eqz p3, :cond_0

    .line 1133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1135
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1136
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090142

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1139
    :cond_1
    return-void

    .line 1126
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 604
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 609
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 612
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 666
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 680
    :cond_0
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 441
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 626
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 38
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 827
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v34

    .line 828
    .local v34, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 831
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_10

    .line 835
    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 836
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 838
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 839
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 842
    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_4

    .line 843
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 844
    .local v14, "cat":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 828
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":Ljava/lang/String;
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 847
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, v34

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .line 850
    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 851
    .local v17, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 853
    .local v25, "mimeType":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 855
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 866
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_6

    const-string v3, "file"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "content"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 869
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 874
    .local v27, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v27, :cond_8

    .line 875
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .line 876
    .local v36, "ssp":Ljava/lang/String;
    :cond_7
    if-eqz v36, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 877
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 878
    .local v26, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 879
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 884
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v36    # "ssp":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 885
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_a

    .line 886
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 887
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 888
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_9

    .line 889
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v31

    .line 890
    .local v31, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v31, :cond_e

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v31    # "port":I
    :cond_a
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 897
    if-eqz v27, :cond_c

    .line 898
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v29

    .line 899
    .local v29, "path":Ljava/lang/String;
    :cond_b
    if-eqz v29, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 900
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 901
    .restart local v26    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 902
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 910
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v29    # "path":Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_10

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 912
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v35, v0

    .line 913
    .local v35, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 914
    .local v8, "bestMatch":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v10, :cond_f

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v32

    .line 916
    .local v32, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v35, v21

    .line 918
    move-object/from16 v0, v32

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_d

    move-object/from16 v0, v32

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 914
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 856
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v32    # "r":Landroid/content/pm/ResolveInfo;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .restart local v25    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 857
    .local v19, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 890
    .end local v19    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v25    # "mimeType":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v31    # "port":I
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 920
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v31    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v21    # "i":I
    .restart local v35    # "set":[Landroid/content/ComponentName;
    :cond_f
    if-eqz p2, :cond_19

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v37

    .line 922
    .local v37, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 925
    .local v30, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 927
    move-object/from16 v0, v34

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_13

    .line 929
    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v28

    .line 930
    .local v28, "packageName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 931
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 966
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "data":Landroid/net/Uri;
    .end local v21    # "i":I
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .end local v37    # "userId":I
    :cond_10
    :goto_5
    if-eqz p1, :cond_12

    .line 968
    const-string v3, "com.google.android.gm"

    move-object/from16 v0, v34

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 969
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 972
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 974
    :cond_12
    const/4 v3, 0x1

    return v3

    .line 935
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "data":Landroid/net/Uri;
    .restart local v21    # "i":I
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    .restart local v35    # "set":[Landroid/content/ComponentName;
    .restart local v37    # "userId":I
    :cond_13
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 936
    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 937
    .restart local v28    # "packageName":Ljava/lang/String;
    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 939
    .local v18, "dataScheme":Ljava/lang/String;
    :goto_6
    if-eqz v18, :cond_16

    const-string v3, "http"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "https"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    const/16 v23, 0x1

    .line 943
    .local v23, "isHttpOrHttps":Z
    :goto_7
    if-eqz v13, :cond_17

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v24, 0x1

    .line 944
    .local v24, "isViewAction":Z
    :goto_8
    if-eqz v15, :cond_18

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v20, 0x1

    .line 947
    .local v20, "hasCategoryBrowsable":Z
    :goto_9
    if-eqz v23, :cond_10

    if-eqz v24, :cond_10

    if-eqz v20, :cond_10

    .line 948
    const/4 v3, 0x2

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v37

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto :goto_5

    .line 937
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v20    # "hasCategoryBrowsable":Z
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    :cond_15
    const/16 v18, 0x0

    goto :goto_6

    .line 939
    .restart local v18    # "dataScheme":Ljava/lang/String;
    :cond_16
    const/16 v23, 0x0

    goto :goto_7

    .line 943
    .restart local v23    # "isHttpOrHttps":Z
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 944
    .restart local v24    # "isViewAction":Z
    :cond_18
    const/16 v20, 0x0

    goto :goto_9

    .line 955
    .end local v16    # "cn":Landroid/content/ComponentName;
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    .end local v37    # "userId":I
    :cond_19
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    .line 959
    :catch_1
    move-exception v33

    .line 960
    .local v33, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 461
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    .line 980
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 981
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 983
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_2

    .line 984
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 990
    :cond_2
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 993
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1001
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 998
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 999
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 451
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 452
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 467
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 534
    return-void
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1016
    const/4 v0, 0x1

    return v0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1020
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1023
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1024
    return-void
.end method

.method startSelected(IZZ)V
    .locals 29
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsKeyguardLocked:Z

    .line 744
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mIsKeyguardLocked:Z

    if-eqz v3, :cond_3

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v3, :cond_2

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v5, "ResolverActivity"

    invoke-virtual {v3, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 750
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 752
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10404c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v8, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 761
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 762
    .local v13, "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-interface {v13}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 763
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->isSingleImageFile(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->getFilePath(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/letv/leui/util/LeResolveUtils;->shareFileNoExit(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x104073b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 767
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->notifySystemUI()V

    .line 770
    :cond_6
    invoke-static {v11, v4}, Lcom/letv/leui/util/LeResolveUtils;->isWeiboOrWeChatTextShare(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)I

    move-result v10

    .line 771
    .local v10, "platId":I
    const/4 v7, 0x0

    .line 772
    .local v7, "intentClassName":Ljava/lang/String;
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_7

    .line 773
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 774
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_7
    const-string v3, "com.letv.android.note"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v10, :cond_8

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v3, v10, v4, v0, v5}, Lcom/letv/leui/util/LeResolveUtils;->startNoteActivity(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :cond_8
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-static {v3}, Lcom/letv/leui/util/LeResolveUtils;->shareTextBeyondMax(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, -0x1

    if-eq v10, v3, :cond_9

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    .line 783
    .local v27, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int v5, v5, v27

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object v12, v4

    .line 784
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity;->showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 785
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 789
    .end local v27    # "screenHeight":I
    :cond_9
    const/16 v25, 0x0

    .line 790
    .local v25, "targetPackageName":Ljava/lang/String;
    if-eqz v11, :cond_a

    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_a

    .line 791
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 793
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v14, p0

    move-object v15, v11

    move-object/from16 v16, v4

    invoke-static/range {v14 .. v25}, Lcom/letv/leui/util/LeResolveUtils;->startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 794
    .local v26, "isShare":Z
    const-string v3, "leshare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShare = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>mPackageName is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1, v7, v3, v5}, Lcom/letv/leui/util/LeResolveUtils;->sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    if-eqz v26, :cond_b

    .line 797
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0

    .line 801
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 803
    const-string v3, "android.intent.extra.TEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    :goto_1
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 808
    const-string v3, "text/plain"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v28

    .line 814
    .local v28, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0

    .line 805
    .end local v28    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_d
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
