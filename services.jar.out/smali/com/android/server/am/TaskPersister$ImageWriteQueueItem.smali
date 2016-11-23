.class Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
.super Lcom/android/server/am/TaskPersister$WriteQueueItem;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageWriteQueueItem"
.end annotation


# instance fields
.field final mFilename:Ljava/lang/String;

.field mImage:Landroid/graphics/Bitmap;

.field mIsIcon:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "isIcon"    # Z

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$1;)V

    .line 136
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 138
    iput-boolean p3, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mIsIcon:Z

    .line 139
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageWriteQueueItem: filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
