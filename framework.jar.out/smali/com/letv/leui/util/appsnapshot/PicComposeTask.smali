.class public Lcom/letv/leui/util/appsnapshot/PicComposeTask;
.super Landroid/os/AsyncTask;
.source "PicComposeTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/letv/leui/util/appsnapshot/CropPicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

.field private listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

.field private preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->composePic(Lcom/letv/leui/util/appsnapshot/CropPicInfo;Lcom/letv/leui/util/appsnapshot/CropPicInfo;)Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->doInBackground([Ljava/lang/Void;)Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBitmapInfo()Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    return-object v0
.end method

.method public getListener()Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    return-object v0
.end method

.method public getPreBitmapInfo()Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    invoke-interface {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;->onCancelled()V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 2
    .param p1, "picInfo"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iget-object v0, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    iput-object v1, v0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;->onFinished(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-virtual {p0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->onPostExecute(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public setCurrentBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 0
    .param p1, "currentBitmapInfo"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->currentBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    return-void
.end method

.method public setListener(Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->listener:Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;

    return-void
.end method

.method public setPreBitmapInfo(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 0
    .param p1, "preBitmapInfo"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeTask;->preBitmapInfo:Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    return-void
.end method
