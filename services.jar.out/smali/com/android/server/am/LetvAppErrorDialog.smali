.class final Lcom/android/server/am/LetvAppErrorDialog;
.super Lcom/letv/leui/widget/LeBottomSheet;
.source "LetvAppErrorDialog.java"


# static fields
.field static final CANCEL:I = 0x2

.field private static final CRASH_NAME_HANDLE:Ljava/lang/String; = "name"

.field private static final CRASH_TYPE:Ljava/lang/String; = "0"

.field private static final CRASH_TYPE_HANDLE:Ljava/lang/String; = "type"

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final OPEN_BUGREPORTER_ACTION:Ljava/lang/String; = "com.letv.bug.reporter"

.field private static final TAG:Ljava/lang/String; = "LetvAppErrorDialog"


# instance fields
.field private isSystemApp:Z

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    new-instance v2, Lcom/android/server/am/LetvAppErrorDialog$5;

    invoke-direct {v2, p0}, Lcom/android/server/am/LetvAppErrorDialog$5;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    iput-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    const/4 v6, 0x0

    .local v6, "message":Ljava/lang/String;
    const/4 v4, -0x1

    .local v4, "id":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .local v5, "btnStrName":[Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "name":Ljava/lang/CharSequence;
    if-eqz v10, :cond_3

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_2

    const v2, 0x1040706

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/LetvAppErrorDialog;->setCancelable(Z)V

    const/4 v2, 0x0

    const v7, 0x1040377

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const v7, 0x1040378

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v7, 0x7d3

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v7, 0x20000

    const/high16 v11, 0x20000

    invoke-virtual {v2, v7, v11}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .local v9, "attrsBaisc":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "Error Dialog"

    invoke-virtual {v9, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v2, 0x104036f

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/LetvAppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application Error: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v7, 0x7da

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v12, 0x493e0

    invoke-virtual {v2, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object v2, p0

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/LetvAppErrorDialog;->buildErrorSheet(Landroid/content/res/Resources;I[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    return-void

    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "attrsBaisc":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const v2, 0x1040370

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .end local v10    # "name":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v10    # "name":Ljava/lang/CharSequence;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_4

    const v2, 0x1040707

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v12, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    const v2, 0x1040371

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/LetvAppErrorDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/LetvAppErrorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildErrorSheet(Landroid/content/res/Resources;I[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "btnStrName"    # [Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .local v3, "ok":Landroid/view/View$OnClickListener;
    const/4 v4, 0x0

    .local v4, "cancel":Landroid/view/View$OnClickListener;
    const/16 v16, 0x0

    .local v16, "other":Landroid/view/View$OnClickListener;
    packed-switch p2, :pswitch_data_0

    const-string v1, "LetvAppErrorDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, v16

    .end local v16    # "other":Landroid/view/View$OnClickListener;
    .local v8, "other":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .end local v8    # "other":Landroid/view/View$OnClickListener;
    .restart local v16    # "other":Landroid/view/View$OnClickListener;
    :pswitch_0
    const/4 v1, 0x1

    const v2, 0x104070c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    new-instance v3, Lcom/android/server/am/LetvAppErrorDialog$1;

    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/LetvAppErrorDialog$1;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .restart local v3    # "ok":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/server/am/LetvAppErrorDialog$2;

    .end local v4    # "cancel":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/LetvAppErrorDialog$2;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .restart local v4    # "cancel":Landroid/view/View$OnClickListener;
    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const v10, -0xdc6a12

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/LetvAppErrorDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    move-object/from16 v8, v16

    .end local v16    # "other":Landroid/view/View$OnClickListener;
    .restart local v8    # "other":Landroid/view/View$OnClickListener;
    goto :goto_0

    .end local v8    # "other":Landroid/view/View$OnClickListener;
    .restart local v16    # "other":Landroid/view/View$OnClickListener;
    :pswitch_1
    new-instance v3, Lcom/android/server/am/LetvAppErrorDialog$3;

    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/LetvAppErrorDialog$3;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .restart local v3    # "ok":Landroid/view/View$OnClickListener;
    new-instance v8, Lcom/android/server/am/LetvAppErrorDialog$4;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/am/LetvAppErrorDialog$4;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .end local v16    # "other":Landroid/view/View$OnClickListener;
    .restart local v8    # "other":Landroid/view/View$OnClickListener;
    const/4 v6, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const v14, -0xdc6a12

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v7, v3

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/LetvAppErrorDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
