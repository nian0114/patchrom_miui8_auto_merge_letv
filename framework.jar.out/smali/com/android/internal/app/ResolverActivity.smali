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
.field private final MSG_DISMISS_KEYGUARD:I

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

.field private mHandler:Landroid/os/Handler;

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

.field private mStatusBarManager:Landroid/app/StatusBarManager;

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

    .line 122
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 137
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 138
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 163
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->MSG_DISMISS_KEYGUARD:I

    .line 166
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2184
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutResId:I

    .line 2192
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2195
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    .line 2203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    .line 2213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2220
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 2635
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reSortList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->reflashLayoutLessFive()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reflashGV(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    return-object v0
.end method

.method private deleteDB(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 2631
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

    .line 2632
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2633
    return-void
.end method

.method private finishAnima()V
    .locals 2

    .prologue
    .line 2538
    const v0, 0x10a003a

    const v1, 0x10a003b

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 2541
    return-void
.end method

.method private getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mineType"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 2600
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "app_counts"

    aput-object v1, v2, v0

    .line 2601
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

    .line 2602
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "app_counts DESC"

    .line 2603
    .local v5, "order":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2605
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2606
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2607
    const-string v0, "app_counts"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2608
    .local v6, "counts":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2609
    .local v8, "id":I
    add-int/lit8 v6, v6, 0x1

    .line 2610
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2611
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "app_counts"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0, p1, v10, v8}, Lcom/android/internal/app/ResolverActivity;->updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2618
    .end local v6    # "counts":I
    .end local v8    # "id":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v7, :cond_0

    .line 2619
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2623
    :cond_0
    return-void

    .line 2614
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    const-string v0, "1"

    invoke-direct {v9, p0, p2, p3, v0}, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2615
    .local v9, "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2618
    .end local v9    # "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 2619
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getLetvIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2233
    const-string v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2234
    const-string v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppTag:Ljava/lang/String;

    .line 2236
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2237
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    .line 2238
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/letv/leui/util/LeResolveUtils;->matchApp([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2240
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2241
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    .line 2243
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2244
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    .line 2246
    :cond_3
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2247
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2248
    .local v0, "bis":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2250
    .end local v0    # "bis":[B
    :cond_4
    const-string v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2251
    const-string v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leBitmapKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2253
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2254
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    .line 2256
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2257
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    .line 2259
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2260
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_9

    .line 2261
    const-string v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2262
    const-string v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2264
    :cond_8
    const-string v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2265
    const-string v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2268
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2269
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 2271
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    .line 2272
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    .line 2273
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

    .line 2276
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_b
    return-void
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 499
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 502
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

    .line 700
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 701
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v5

    .line 706
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 707
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

    .line 708
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 709
    const/4 v5, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private initFiveLayoutContent(Landroid/widget/LinearLayout;I)V
    .locals 24
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "itemCounts"    # I

    .prologue
    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v15

    .line 2401
    .local v15, "resolveItemSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 2402
    .local v8, "gvMaxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2403
    .local v5, "fontScale":F
    float-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v19, v20, v22

    if-lez v19, :cond_0

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501ff

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v8, v19, 0x2

    .line 2406
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fe

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2407
    .local v17, "titleHeight":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewMagin(Landroid/content/Context;)I

    move-result v7

    .line 2408
    .local v7, "gridViewMagin":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewItemGap(Landroid/content/Context;)I

    move-result v6

    .line 2409
    .local v6, "gridViewItemDividerPadding":I
    const/4 v4, 0x2

    .line 2410
    .local v4, "Offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 2411
    .local v16, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 2412
    .local v14, "params1":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 2413
    mul-int/lit8 v19, v17, 0x2

    sub-int v19, v16, v19

    sub-int v19, v19, v8

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2417
    :goto_0
    iget v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v8, :cond_1

    .line 2418
    iput v8, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2420
    :cond_1
    iput v7, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2421
    sub-int v19, v7, v6

    add-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2424
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v15, v0, :cond_6

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 2426
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int v19, v8, v17

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2427
    neg-int v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2429
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2439
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_1
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_3

    .line 2440
    const/16 p2, 0x4

    .line 2441
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x10204b1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x1080644

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x1080646

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2445
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x10204ae

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2446
    .local v18, "tv":Landroid/widget/TextView;
    const v19, 0x104063b

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 2447
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/internal/app/ResolverActivity$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$11;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2463
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v9, v0, :cond_7

    .line 2464
    move v12, v9

    .line 2465
    .local v12, "j":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x10204b1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2466
    .local v11, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x10204ae

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2467
    .restart local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x108063e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    .line 2469
    .local v10, "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-interface {v10}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2470
    instance-of v0, v10, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v19, v10

    check-cast v19, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v19

    if-nez v19, :cond_4

    .line 2473
    new-instance v20, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v19, v10

    check-cast v19, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v11}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2475
    :cond_4
    invoke-interface {v10}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2476
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/internal/app/ResolverActivity$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/internal/app/ResolverActivity$12;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2463
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 2415
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .end local v11    # "iv":Landroid/widget/ImageView;
    .end local v12    # "j":I
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_5
    mul-int/lit8 v19, v17, 0x2

    sub-int v19, v16, v19

    div-int/lit8 v20, v8, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 2431
    :cond_6
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_2

    .line 2432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 2433
    .restart local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v19, v8, 0x2

    add-int v19, v19, v17

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2434
    neg-int v0, v8

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2436
    div-int/lit8 v19, v8, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2496
    .end local v13    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "i":I
    :cond_7
    return-void
.end method

.method private initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V
    .locals 18
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
    .line 2279
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const v15, 0x10204ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    .line 2280
    const/4 v4, 0x0

    .line 2281
    .local v4, "intent":Landroid/content/Intent;
    if-nez p1, :cond_1

    .line 2282
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 2283
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "intent":Landroid/content/Intent;
    check-cast v4, Landroid/content/Intent;

    .line 2284
    .restart local v4    # "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 2285
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2286
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2290
    .end local v2    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1040365

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "shareTitle":Ljava/lang/String;
    move-object/from16 v15, p1

    .line 2291
    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2292
    if-eqz p4, :cond_1

    .line 2293
    const/16 p4, 0x0

    .line 2297
    .end local v14    # "shareTitle":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2298
    const v15, 0x102045f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mRealLayout:Landroid/widget/LinearLayout;

    .line 2299
    const v15, 0x10204ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    .line 2300
    const v15, 0x10204a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    .line 2301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    new-instance v16, Lcom/android/internal/app/ResolverActivity$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v15}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v10

    .line 2309
    .local v10, "resolveItemSize":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2310
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v13, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2311
    .local v13, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v12, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2312
    .local v12, "screenHeight":I
    sub-int v15, v13, v12

    div-int/lit8 v5, v15, 0x2

    .line 2313
    .local v5, "layoutWidth":I
    const v15, 0x10204b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 2314
    .local v6, "leftLayout":Landroid/widget/LinearLayout;
    const v15, 0x10204b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2315
    .local v11, "rightLayout":Landroid/widget/LinearLayout;
    const v15, 0x10204a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2316
    .local v3, "centerLayout":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v7, v5, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2317
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2318
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2319
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v8, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2320
    .local v8, "params1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2321
    const v15, 0x10204b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    .line 2322
    const/4 v15, 0x5

    if-gt v10, v15, :cond_2

    if-lez v10, :cond_2

    .line 2323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v15}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 2324
    .local v9, "params3":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, -0x2

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v15, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2327
    .end local v9    # "params3":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    new-instance v15, Lcom/android/internal/app/ResolverActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v6, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2333
    new-instance v15, Lcom/android/internal/app/ResolverActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/app/ResolverActivity$8;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2340
    .end local v3    # "centerLayout":Landroid/widget/RelativeLayout;
    .end local v5    # "layoutWidth":I
    .end local v6    # "leftLayout":Landroid/widget/LinearLayout;
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "rightLayout":Landroid/widget/LinearLayout;
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    :cond_3
    const v15, 0x10204b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 2341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    const v16, 0x10204ad

    invoke-virtual/range {v15 .. v16}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    .line 2342
    const v15, 0x1020461

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    .line 2343
    const/4 v15, 0x5

    if-le v10, v15, :cond_4

    .line 2344
    const/4 v10, 0x5

    .line 2346
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v15}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x10900e1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2351
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    new-instance v16, Lcom/android/internal/app/ResolverActivity$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$9;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2370
    const v15, 0x10204a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    .line 2371
    const v15, 0x10204a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    .line 2372
    const v15, 0x102038c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    .line 2373
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    .line 2374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    new-instance v16, Lcom/android/internal/app/ResolverActivity$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$10;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2381
    const v15, 0x10204aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    .line 2382
    const v15, 0x10204ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 2384
    if-eqz p4, :cond_6

    .line 2385
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2389
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_5

    .line 2390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    array-length v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/app/ResolverActivity;->initSpecialLayoutContent(Landroid/widget/LinearLayout;)V

    .line 2397
    :cond_5
    return-void

    .line 2387
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSpecialLayoutContent(Landroid/widget/LinearLayout;)V
    .locals 8
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 2499
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2500
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 2501
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p0, v5, p1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2502
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 2504
    move v2, v0

    .line 2505
    .local v2, "j":I
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x10204b1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2506
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x10204ae

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2507
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2508
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2509
    const v5, 0x1080654

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2510
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x10601e9

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2511
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2519
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2520
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/internal/app/ResolverActivity$13;

    invoke-direct {v6, p0, v2}, Lcom/android/internal/app/ResolverActivity$13;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2503
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2534
    .end local v0    # "i":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "j":I
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2647
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2648
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

    .line 2649
    const-string v1, "android.intent.category.HOME"

    .line 2651
    :cond_0
    if-nez v1, :cond_1

    .line 2652
    const-string v1, "unknow"

    .line 2654
    :cond_1
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2655
    .local v0, "activityName":Ljava/lang/String;
    const-string v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    return-void
.end method

.method private insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    .locals 4
    .param p1, "shareActivityInfo"    # Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    .prologue
    .line 2591
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2592
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v2, "app_name"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    const-string v2, "app_counts"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppClickCounts:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    const-string v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2596
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2597
    return-void
.end method

.method private isHighLayerWindow()Z
    .locals 2

    .prologue
    .line 2806
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
    .line 2140
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    .line 2141
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
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    return-object v0
.end method

.method private notifySystemUI()V
    .locals 2

    .prologue
    .line 2811
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.letv.leshare.CLICKED_SHAREITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2812
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2813
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
    .line 2544
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    move-object v11, p1

    .line 2545
    .local v11, "newResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .local v12, "pickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    .local v13, "rePickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 2548
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2549
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    aget-object v1, v0, v8

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1000(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2550
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2551
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2547
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2548
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2556
    .end local v9    # "j":I
    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2557
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2558
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2557
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2561
    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "app_name"

    aput-object v1, v2, v0

    .line 2563
    .local v2, "projectiong":[Ljava/lang/String;
    const-string v3, "app_counts>\'2\'"

    .line 2564
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.leShare/leShareTable"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "app_counts DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2566
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2567
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 2568
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2569
    const-string v0, "app_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2570
    .local v6, "activityName":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 2571
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    # getter for: Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->access$1000(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2572
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2573
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2570
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2567
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2577
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2578
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 2579
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2578
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2584
    .end local v10    # "k":I
    :cond_7
    if-eqz v7, :cond_8

    .line 2585
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2588
    :cond_8
    return-void

    .line 2584
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 2585
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private reflashGV(I)V
    .locals 7
    .param p1, "resolveItemSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 2687
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 2688
    .local v0, "gvMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2689
    .local v3, "titleHeight":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 2690
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2691
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2692
    .local v2, "params1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x9

    if-le p1, v4, :cond_1

    .line 2693
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2694
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2695
    add-int v4, v0, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2696
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2697
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2698
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2713
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 2700
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x5

    if-le p1, v4, :cond_2

    .line 2701
    div-int/lit8 v4, v0, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2702
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2703
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2704
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2705
    div-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2706
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 2708
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2709
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2710
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private reflashLayoutLessFive()V
    .locals 4

    .prologue
    .line 2671
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 2672
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2673
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    .line 2674
    .local v0, "chindItemCounts":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 2675
    const/4 v0, 0x5

    .line 2677
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-static {p0, v0, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2678
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2679
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900e1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2681
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2682
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2684
    .end local v0    # "chindItemCounts":I
    :cond_2
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 2789
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2791
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2792
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2793
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2794
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2796
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

    .line 1168
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
    .line 742
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .prologue
    .line 526
    const/4 v4, -0x2

    if-eq p1, v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 528
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 529
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 530
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 532
    .local v0, "originIsManaged":Z
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    .line 533
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 534
    const v4, 0x104043f

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 539
    .end local v0    # "originIsManaged":Z
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_1
    return-void

    .line 530
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    .restart local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 536
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
    .line 2719
    new-instance v4, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 2720
    .local v4, "mBottomSheetTextShare":Lcom/letv/leui/widget/LeBottomSheet;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040650

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2721
    .local v17, "textLongWeiboShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040652

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2722
    .local v15, "pictureShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040651

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2723
    .local v18, "textShare":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2724
    .local v16, "shareTitle":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2725
    move-object/from16 v16, v17

    .line 2730
    :goto_0
    const/4 v5, 0x5

    new-instance v6, Lcom/android/internal/app/ResolverActivity$14;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/android/internal/app/ResolverActivity$14;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    new-instance v7, Lcom/android/internal/app/ResolverActivity$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$15;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

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

    .line 2779
    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 2780
    new-instance v5, Lcom/android/internal/app/ResolverActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ResolverActivity$16;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2786
    return-void

    .line 2727
    :cond_0
    move-object/from16 v16, v15

    goto :goto_0
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 722
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .line 724
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 2799
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2802
    :cond_0
    return-void
.end method

.method private updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "id"    # I

    .prologue
    .line 2626
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

    .line 2627
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2628
    .local v0, "update":I
    return-void
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 510
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 511
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 512
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 514
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 515
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 516
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 518
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 521
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
    .line 1069
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

    .line 1110
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    const v9, 0x10900e6

    .line 1116
    .local v9, "layoutId":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v7

    .line 1117
    .local v7, "count":I
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1119
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1120
    const/4 v0, 0x1

    .line 1142
    :goto_2
    return v0

    .line 1069
    .end local v7    # "count":I
    .end local v9    # "layoutId":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1113
    :cond_2
    const v9, 0x10900e0

    .restart local v9    # "layoutId":I
    goto :goto_1

    .line 1123
    .restart local v7    # "count":I
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v10

    .line 1125
    .local v10, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1126
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1129
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1130
    const/4 v0, 0x1

    goto :goto_2

    .line 1133
    .end local v10    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_4
    if-lez v7, :cond_5

    .line 1134
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V

    .line 1142
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1138
    :cond_5
    const v0, 0x1090146

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1139
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1140
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
    .line 1055
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
    .line 571
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 574
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 2226
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2227
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->finishAnima()V

    .line 2228
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 579
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 584
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 580
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    .line 506
    const v0, 0x1090146

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 849
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 494
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
    .line 558
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 559
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 560
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 561
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    :goto_1
    return-object v2

    .line 558
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .line 563
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
    .line 590
    :try_start_0
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v5, :cond_1

    .line 591
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 592
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 619
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    .line 597
    .local v4, "iconRes":I
    if-eqz v4, :cond_2

    .line 598
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 599
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 601
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v4, v5, :cond_0

    .line 603
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/theme/LeIconCustomHelper;->haveThemeTemplateFile(Landroid/content/res/Resources;)Z

    move-result v3

    .line 604
    .local v3, "haveThemplateRes":Z
    if-eqz v3, :cond_0

    .line 605
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/content/res/theme/LeIconCustomHelper;->getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 606
    .local v1, "drClip":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 607
    goto :goto_0

    .line 616
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "drClip":Landroid/graphics/drawable/Drawable;
    .end local v3    # "haveThemplateRes":Z
    .end local v4    # "iconRes":I
    :catch_0
    move-exception v2

    .line 617
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ResolverActivity"

    const-string v6, "Couldn\'t find resources for package"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
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
    .line 1035
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 754
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 251
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 252
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 253
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

    .line 258
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 260
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 261
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 262
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
    .line 278
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 279
    .local v10, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 281
    const/16 v3, 0x30

    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 286
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    .line 288
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getLetvIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/util/LeResolveUtils$UV;->getFromPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    .line 294
    const/4 v3, 0x1

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const v3, 0x103052a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 309
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

    .line 315
    :goto_1
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 454
    :cond_1
    :goto_2
    return-void

    .line 289
    :catch_0
    move-exception v11

    .line 290
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 312
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .line 321
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 322
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 323
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 325
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 326
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 328
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 329
    .local v9, "am":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 332
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 334
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 335
    .local v12, "referrerPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, p0, v4, v12}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    .end local v12    # "referrerPackage":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x10100

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 362
    if-nez p3, :cond_3

    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 414
    :cond_3
    const v3, 0x1020390

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    .line 415
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 416
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    new-instance v4, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 439
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/ResolverActivity$5;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 450
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerReceiver()V

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    .line 336
    :catch_2
    move-exception v11

    .line 337
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
    .line 271
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

    .line 272
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 667
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 668
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 677
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->unregisterReceiver()V

    .line 678
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2661
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2662
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2665
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
    .line 1148
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    .line 1149
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    move-object v0, v3

    .line 1150
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1152
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1153
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1154
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1155
    if-eqz p3, :cond_0

    .line 1156
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1158
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1159
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090145

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1162
    :cond_1
    return-void

    .line 1149
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 625
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 630
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 633
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 682
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 683
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 697
    :cond_0
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 462
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 647
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 650
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

    .line 658
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 38
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 853
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v34

    .line 854
    .local v34, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 857
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

    .line 861
    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 864
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 865
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    .line 868
    .local v15, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_4

    .line 869
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

    .line 870
    .local v14, "cat":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 854
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":Ljava/lang/String;
    .end local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 873
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v15    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, v34

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .line 876
    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 877
    .local v17, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    .line 878
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 879
    .local v25, "mimeType":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 881
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v25    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 892
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

    .line 895
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 900
    .local v27, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v27, :cond_8

    .line 901
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v36

    .line 902
    .local v36, "ssp":Ljava/lang/String;
    :cond_7
    if-eqz v36, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 903
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 904
    .local v26, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 905
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 910
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v36    # "ssp":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 911
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_a

    .line 912
    :cond_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 913
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 914
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_9

    .line 915
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v31

    .line 916
    .local v31, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    if-ltz v31, :cond_e

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v31    # "port":I
    :cond_a
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v27

    .line 923
    if-eqz v27, :cond_c

    .line 924
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v29

    .line 925
    .local v29, "path":Ljava/lang/String;
    :cond_b
    if-eqz v29, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 926
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PatternMatcher;

    .line 927
    .restart local v26    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 928
    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 936
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v26    # "p":Landroid/os/PatternMatcher;
    .end local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v29    # "path":Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_10

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 938
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v35, v0

    .line 939
    .local v35, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 940
    .local v8, "bestMatch":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v10, :cond_f

    .line 941
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

    .line 942
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

    .line 944
    move-object/from16 v0, v32

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_d

    move-object/from16 v0, v32

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 940
    :cond_d
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 882
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v21    # "i":I
    .end local v32    # "r":Landroid/content/pm/ResolveInfo;
    .end local v35    # "set":[Landroid/content/ComponentName;
    .restart local v25    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 883
    .local v19, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 916
    .end local v19    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v25    # "mimeType":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v27    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v31    # "port":I
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 946
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

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v37

    .line 948
    .local v37, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    .line 951
    .local v30, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 953
    move-object/from16 v0, v34

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_13

    .line 955
    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v28

    .line 956
    .local v28, "packageName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 957
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 992
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

    .line 994
    const-string v3, "com.google.android.gm"

    move-object/from16 v0, v34

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 995
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 998
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1000
    :cond_12
    const/4 v3, 0x1

    return v3

    .line 961
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

    .line 962
    .local v16, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 963
    .restart local v28    # "packageName":Ljava/lang/String;
    if-eqz v17, :cond_15

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 965
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

    .line 969
    .local v23, "isHttpOrHttps":Z
    :goto_7
    if-eqz v13, :cond_17

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v24, 0x1

    .line 970
    .local v24, "isViewAction":Z
    :goto_8
    if-eqz v15, :cond_18

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v20, 0x1

    .line 973
    .local v20, "hasCategoryBrowsable":Z
    :goto_9
    if-eqz v23, :cond_10

    if-eqz v24, :cond_10

    if-eqz v20, :cond_10

    .line 974
    const/4 v3, 0x2

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move/from16 v2, v37

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto :goto_5

    .line 963
    .end local v18    # "dataScheme":Ljava/lang/String;
    .end local v20    # "hasCategoryBrowsable":Z
    .end local v23    # "isHttpOrHttps":Z
    .end local v24    # "isViewAction":Z
    :cond_15
    const/16 v18, 0x0

    goto :goto_6

    .line 965
    .restart local v18    # "dataScheme":Ljava/lang/String;
    :cond_16
    const/16 v23, 0x0

    goto :goto_7

    .line 969
    .restart local v23    # "isHttpOrHttps":Z
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 970
    .restart local v24    # "isViewAction":Z
    :cond_18
    const/16 v20, 0x0

    goto :goto_9

    .line 981
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

    .line 985
    :catch_1
    move-exception v33

    .line 986
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
    .line 482
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

    .line 1006
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1007
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1009
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_2

    .line 1010
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1031
    :cond_1
    :goto_0
    return-void

    .line 1016
    :cond_2
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1022
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

    .line 1027
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

    .line 1024
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1025
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 472
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 473
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 476
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 478
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
    .line 486
    if-eqz p1, :cond_0

    .line 487
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 488
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
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
    .line 554
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 555
    return-void
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 1042
    const/4 v0, 0x1

    return v0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1046
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

    .line 1049
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 1050
    return-void
.end method

.method startSelected(IZZ)V
    .locals 32
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v27, 0x1

    .line 761
    .local v27, "isKeyguardLocked":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v28, 0x1

    .line 762
    .local v28, "isKeyguardShowing":Z
    :goto_2
    if-eqz v27, :cond_3

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    :cond_2
    if-eqz v28, :cond_6

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 772
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 774
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10404c6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 760
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v27    # "isKeyguardLocked":Z
    .end local v28    # "isKeyguardShowing":Z
    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 761
    .restart local v27    # "isKeyguardLocked":Z
    :cond_5
    const/16 v28, 0x0

    goto :goto_2

    .line 769
    .restart local v28    # "isKeyguardShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    const-wide/16 v16, 0x5dc

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 783
    .restart local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v14

    .line 784
    .local v14, "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-interface {v14}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v5

    .line 785
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {v5}, Lcom/letv/leui/util/LeResolveUtils;->isSingleImageFile(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v5}, Lcom/letv/leui/util/LeResolveUtils;->getFilePath(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/letv/leui/util/LeResolveUtils;->shareFileNoExit(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040751

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 789
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isHighLayerWindow()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->notifySystemUI()V

    .line 792
    :cond_9
    invoke-static {v12, v5}, Lcom/letv/leui/util/LeResolveUtils;->isWeiboOrWeChatTextShare(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)I

    move-result v11

    .line 793
    .local v11, "platId":I
    const/4 v8, 0x0

    .line 794
    .local v8, "intentClassName":Ljava/lang/String;
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_a

    .line 795
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 796
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "leshare.enable_share_by_sharesdk"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 800
    const-string v4, "com.letv.android.note"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v11, :cond_b

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v4, v11, v5, v0, v6}, Lcom/letv/leui/util/LeResolveUtils;->startNoteActivity(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 806
    :cond_b
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->shareTextBeyondMax(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, -0x1

    if-eq v11, v4, :cond_c

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    .line 809
    .local v30, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    add-int v6, v6, v30

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    move-object v13, v5

    .line 810
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ResolverActivity;->showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 811
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 815
    .end local v30    # "screenHeight":I
    :cond_c
    const/16 v26, 0x0

    .line 816
    .local v26, "targetPackageName":Ljava/lang/String;
    if-eqz v12, :cond_d

    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_d

    .line 817
    iget-object v4, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 819
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v15, p0

    move-object/from16 v16, v12

    move-object/from16 v17, v5

    invoke-static/range {v15 .. v26}, Lcom/letv/leui/util/LeResolveUtils;->startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 820
    .local v29, "isShare":Z
    const-string v4, "leshare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShare = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">>mPackageName is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move/from16 v0, v29

    move-object/from16 v1, p0

    invoke-static {v0, v1, v8, v4, v6}, Lcom/letv/leui/util/LeResolveUtils;->sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    if-eqz v29, :cond_e

    .line 823
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0

    .line 827
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 829
    const-string v4, "android.intent.extra.TEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    :goto_4
    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 834
    const-string v4, "text/plain"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v31

    .line 840
    .local v31, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto/16 :goto_0

    .line 831
    .end local v31    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_10
    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4
.end method
