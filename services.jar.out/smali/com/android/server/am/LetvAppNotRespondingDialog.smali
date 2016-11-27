.class final Lcom/android/server/am/LetvAppNotRespondingDialog;
.super Lcom/letv/leui/widget/LeBottomSheet;
.source "LetvAppNotRespondingDialog.java"


# static fields
.field private static final CRASH_NAME_HANDLE:Ljava/lang/String; = "name"

.field private static final CRASH_TYPE:Ljava/lang/String; = "1"

.field private static final CRASH_TYPE_HANDLE:Ljava/lang/String; = "type"

.field static final FORCE_CLOSE:I = 0x1

.field private static final OPEN_BUGREPORTER_ACTION:Ljava/lang/String; = "com.letv.bug.reporter"

.field private static final TAG:Ljava/lang/String; = "LetvAppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private isSystemApp:Z

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 13
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "aboveSystem"    # Z

    .prologue
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->isSystemApp:Z

    new-instance v10, Lcom/android/server/am/LetvAppNotRespondingDialog$3;

    invoke-direct {v10, p0}, Lcom/android/server/am/LetvAppNotRespondingDialog$3;-><init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, "res":Landroid/content/res/Resources;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/LetvAppNotRespondingDialog;->setCancelable(Z)V

    const/4 v5, 0x0

    .local v5, "message":Ljava/lang/String;
    const/4 v4, -0x1

    .local v4, "id":I
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/String;

    .local v3, "btnStrName":[Ljava/lang/String;
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "name1":Ljava/lang/CharSequence;
    :goto_0
    const/4 v7, 0x0

    .local v7, "name2":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_3

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_2

    const v9, 0x1040708

    .local v9, "resid":I
    :goto_1
    if-eqz v7, :cond_9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_c

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->isSystemApp:Z

    :goto_4
    const/4 v4, 0x1

    const/4 v10, 0x0

    const v11, 0x1040377

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const v11, 0x1040379

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7d3

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/high16 v11, 0x20000

    const/high16 v12, 0x20000

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .local v2, "attrsBasic":Landroid/view/WindowManager$LayoutParams;
    const-string v10, "Error Dialog"

    invoke-virtual {v2, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v10, 0x1040372

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/LetvAppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x7da

    invoke-virtual {v10, v11}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Application Not Responding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v10, 0x110

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->buildErrorSheet(I[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "attrsBasic":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "name1":Ljava/lang/CharSequence;
    .end local v7    # "name2":Ljava/lang/CharSequence;
    .end local v9    # "resid":I
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v6    # "name1":Ljava/lang/CharSequence;
    .restart local v7    # "name2":Ljava/lang/CharSequence;
    :cond_2
    const v9, 0x1040373

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_3
    move-object v6, v7

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_4

    const v9, 0x104070a

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_4
    const v9, 0x1040375

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_5
    if-eqz v6, :cond_7

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_6

    const v9, 0x1040709

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_6
    const v9, 0x1040374

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_7
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-gtz v10, :cond_8

    const v9, 0x104070b

    .restart local v9    # "resid":I
    goto/16 :goto_1

    .end local v9    # "resid":I
    :cond_8
    const v9, 0x1040376

    .restart local v9    # "resid":I
    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    const-string v10, ""

    iput-object v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_c
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->isSystemApp:Z

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/LetvAppNotRespondingDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->isSystemApp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/LetvAppNotRespondingDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildErrorSheet(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "btnStrName"    # [Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .local v2, "ok":Landroid/view/View$OnClickListener;
    const/4 v3, 0x0

    .local v3, "other":Landroid/view/View$OnClickListener;
    packed-switch p1, :pswitch_data_0

    const-string v0, "LetvAppNotRespondingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    new-instance v2, Lcom/android/server/am/LetvAppNotRespondingDialog$1;

    .end local v2    # "ok":Landroid/view/View$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/server/am/LetvAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V

    .restart local v2    # "ok":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/server/am/LetvAppNotRespondingDialog$2;

    .end local v3    # "other":Landroid/view/View$OnClickListener;
    invoke-direct {v3, p0}, Lcom/android/server/am/LetvAppNotRespondingDialog$2;-><init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V

    .restart local v3    # "other":Landroid/view/View$OnClickListener;
    const/4 v1, 0x5

    const v9, -0xdc6a12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, v4

    move-object v7, p3

    move-object v8, v4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/LetvAppNotRespondingDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    return-void
.end method
