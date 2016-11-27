.class public Lcom/letv/storage/OtgGuideDialog;
.super Ljava/lang/Object;
.source "OtgGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/storage/OtgGuideDialog$cancelListener;,
        Lcom/letv/storage/OtgGuideDialog$mountStorageListener;,
        Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;
    }
.end annotation


# static fields
.field private static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field private static final DISMISS_TIMEOUT:J = 0x1b58L

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INSERT_STORAGE_ACTION:I = 0x2

.field private static final REMOVE_STORAGE_ACTION:I = 0x4

.field private static final SD_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field private static final START_FILEMANAGER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StorageDefaultPathDialog"


# instance fields
.field OtgStorage:Z

.field private PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkLooper:Landroid/os/Looper;

.field private otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOtgStorage"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/storage/OtgGuideDialog;->OtgStorage:Z

    new-instance v1, Lcom/letv/storage/OtgGuideDialog$1;

    invoke-direct {v1, p0}, Lcom/letv/storage/OtgGuideDialog$1;-><init>(Lcom/letv/storage/OtgGuideDialog;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "StorageDefaultPathDialog"

    const-string v2, "OtgGuideDialog start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OtgGuide"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    new-instance v1, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    iget-object v2, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;-><init>(Lcom/letv/storage/OtgGuideDialog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    iput-object p3, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/letv/storage/OtgGuideDialog;->OtgStorage:Z

    return-void
.end method

.method static synthetic access$200(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/storage/OtgGuideDialog;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 0
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;
    .param p1, "x1"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    invoke-direct {p0}, Lcom/letv/storage/OtgGuideDialog;->appear()V

    return-void
.end method

.method static synthetic access$500(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    invoke-direct {p0}, Lcom/letv/storage/OtgGuideDialog;->disappear()V

    return-void
.end method

.method static synthetic access$600(Lcom/letv/storage/OtgGuideDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    return-object v0
.end method

.method private appear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    :cond_0
    return-void
.end method

.method private disappear()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    :cond_0
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const-string v0, "StorageDefaultPathDialog"

    const-string v1, "OtgGuideDialog disappear() --mWorkLooper.quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
