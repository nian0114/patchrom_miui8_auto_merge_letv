.class public Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
.super Ljava/lang/Object;
.source "PicComposeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PicComposeHandler"


# instance fields
.field private final MAX_RUNNING_NUM:I

.field private currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

.field private firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

.field private isFinished:Z

.field private isForceStop:Z

.field private isPrepared:Z

.field private mRunningReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/appsnapshot/PicComposeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/appsnapshot/PicComposeTask;",
            ">;"
        }
    .end annotation
.end field

.field private onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->MAX_RUNNING_NUM:I

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    .param p1, "x1"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    return-void
.end method

.method private declared-synchronized addPic2ComposeList(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    .locals 2
    .param p1, "task"    # Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    if-nez v0, :cond_0

    const-string v0, "PicComposeHandler"

    const-string v1, "PicComposeHandler is not prepared , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized checkTaskList()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    invoke-direct {p0, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-boolean v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 3
    .param p1, "picInfo"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->checkTaskList()V

    goto :goto_1
.end method

.method private executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    .locals 1
    .param p1, "task"    # Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setPreBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    new-instance v0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;-><init>(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;)V

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setListener(Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    return-void
.end method


# virtual methods
.method public addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I
    .param p3, "isHead"    # Z
    .param p4, "isFoot"    # Z

    .prologue
    new-instance v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {v0}, Lcom/letv/leui/util/appsnapshot/CropPicInfo;-><init>()V

    .local v0, "info":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    iput p2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    iput-object p1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    iput-boolean p3, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    iput-boolean p4, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    new-instance v1, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    invoke-direct {v1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;-><init>()V

    .local v1, "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    invoke-virtual {v1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setCurrentBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    invoke-direct {p0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V

    return-void
.end method

.method public forceStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-boolean v2, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .local v0, "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setListener(Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;)V

    invoke-virtual {v0, v2}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->cancel(Z)Z

    .end local v0    # "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {p0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    iput-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    iput-boolean v3, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->initData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "PicComposeHandler"

    const-string v1, "PicComposeHandler is not finished , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->initData()V

    goto :goto_0
.end method

.method public setFirstPicInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    new-instance v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {v0}, Lcom/letv/leui/util/appsnapshot/CropPicInfo;-><init>()V

    .local v0, "info":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    iput-object p1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    iput-boolean v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    iput-boolean v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    return-void
.end method

.method public setOnFinishListener(Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;)V
    .locals 0
    .param p1, "onFinishListener"    # Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    return-void
.end method
