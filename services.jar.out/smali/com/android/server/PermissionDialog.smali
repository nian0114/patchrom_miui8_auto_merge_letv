.class Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialog$CheckboxChangeListener;,
        Lcom/android/server/PermissionDialog$NegativeOnclickListener;,
        Lcom/android/server/PermissionDialog$PositiveOnclickListener;
    }
.end annotation


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_ASK:I = 0x6

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x1b58L

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private mChoice:Lcom/letv/leui/widget/LeCheckBox;

.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .local v14, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mCode:I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mUid:I

    const v2, 0x1070067

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getmDialog()Landroid/app/Dialog;

    move-result-object v12

    .local v12, "mDialog":Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v6, 0x7d3

    invoke-virtual {v2, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v6, 0x20000

    const/high16 v16, 0x20000

    move/from16 v0, v16

    invoke-virtual {v2, v6, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x104043b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "allow":Ljava/lang/String;
    const v2, 0x104043c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "deny":Ljava/lang/String;
    new-instance v3, Lcom/android/server/PermissionDialog$PositiveOnclickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/PermissionDialog$PositiveOnclickListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .local v3, "positiveOnclickListener":Lcom/android/server/PermissionDialog$PositiveOnclickListener;
    new-instance v4, Lcom/android/server/PermissionDialog$NegativeOnclickListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/PermissionDialog$NegativeOnclickListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .local v4, "negativeOnclickListener":Lcom/android/server/PermissionDialog$NegativeOnclickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "name":Ljava/lang/String;
    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    const v6, 0x1040694

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    aget-object v18, v18, p3

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "label":Ljava/lang/String;
    const v2, 0x10804dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/letv/leui/util/DrawableUtils;->createShadowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_1
    new-instance v5, Lcom/android/server/PermissionDialog$CheckboxChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/PermissionDialog$CheckboxChangeListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .local v5, "checkboxChangeListener":Lcom/android/server/PermissionDialog$CheckboxChangeListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v6, v16

    const/16 v16, 0x1

    aput-object v11, v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    const v6, 0x10405ab

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/LeCheckBox;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    new-instance v15, Landroid/os/HandlerThread;

    const-string v2, "PermissionDialog"

    invoke-direct {v15, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v15, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/PermissionDialog$1;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6, v15}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;Landroid/os/Looper;Landroid/os/HandlerThread;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v16, 0x1b58

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "gaozhipeng"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new dialog:"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PermissionDialog;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget v0, p0, Lcom/android/server/PermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PermissionDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget v0, p0, Lcom/android/server/PermissionDialog;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PermissionDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    return-void
.end method
