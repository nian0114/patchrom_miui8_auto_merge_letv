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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->MAX_RUNNING_NUM:I

    .line 25
    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    .line 26
    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    .line 27
    iput-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    .param p1, "x1"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    return-void
.end method

.method private declared-synchronized addPic2ComposeList(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    .locals 2
    .param p1, "task"    # Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    if-nez v0, :cond_0

    .line 128
    const-string v0, "PicComposeHandler"

    const-string v1, "PicComposeHandler is not prepared , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    .line 132
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-direct {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized checkTaskList()V
    .locals 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    invoke-direct {p0, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-boolean v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    if-eqz v0, :cond_1

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    if-nez v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 187
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 182
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

    .line 142
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    if-nez v0, :cond_3

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 165
    :cond_2
    :goto_1
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 163
    :cond_4
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .line 164
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->checkTaskList()V

    goto :goto_1
.end method

.method private executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
    .locals 1
    .param p1, "task"    # Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setPreBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    .line 195
    new-instance v0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;-><init>(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;)V

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setListener(Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;)V

    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .line 119
    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .line 120
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    .line 123
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
    .line 53
    new-instance v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {v0}, Lcom/letv/leui/util/appsnapshot/CropPicInfo;-><init>()V

    .line 54
    .local v0, "info":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    iput p2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    .line 55
    iput-object p1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    .line 58
    iput-boolean p3, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    .line 59
    iput-boolean p4, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    .line 61
    new-instance v1, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    invoke-direct {v1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;-><init>()V

    .line 62
    .local v1, "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    invoke-virtual {v1, v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setCurrentBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V

    .line 66
    return-void
.end method

.method public forceStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    iget-boolean v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isForceStop:Z

    .line 91
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-boolean v2, v1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mWaitReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 95
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->mRunningReqList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;

    .line 97
    .local v0, "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->setListener(Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->cancel(Z)Z

    .line 100
    .end local v0    # "task":Lcom/letv/leui/util/appsnapshot/PicComposeTask;
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->currentPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {p0, v1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    .line 101
    iput-boolean v2, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    .line 102
    iput-boolean v3, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    goto :goto_0
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->initData()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isPrepared:Z

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "PicComposeHandler"

    const-string v1, "PicComposeHandler is not finished , addPic2ComposeList failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->isFinished:Z

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->initData()V

    goto :goto_0
.end method

.method public setFirstPicInfo(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 74
    new-instance v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {v0}, Lcom/letv/leui/util/appsnapshot/CropPicInfo;-><init>()V

    .line 75
    .local v0, "info":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    const/4 v1, 0x0

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    .line 76
    iput-object p1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    .line 79
    iput-boolean v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    .line 80
    iput-boolean v2, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    .line 81
    iput-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->firstPicInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .line 83
    return-void
.end method

.method public setOnFinishListener(Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;)V
    .locals 0
    .param p1, "onFinishListener"    # Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->onFinishListener:Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;

    .line 114
    return-void
.end method
