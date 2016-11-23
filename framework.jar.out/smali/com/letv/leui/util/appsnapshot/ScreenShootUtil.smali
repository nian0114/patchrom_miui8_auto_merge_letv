.class public Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;
.super Ljava/lang/Object;
.source "ScreenShootUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenShootUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized composePic(Lcom/letv/leui/util/appsnapshot/CropPicInfo;Lcom/letv/leui/util/appsnapshot/CropPicInfo;)Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    .locals 10
    .param p0, "pre"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    .param p1, "pos"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    .line 102
    const-class v7, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;

    monitor-enter v7

    :try_start_0
    iget v6, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    iget v8, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    if-lt v6, v8, :cond_0

    iget v3, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    .line 103
    .local v3, "newBitmapWidth":I
    :goto_0
    iget v6, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    iget v8, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    add-int v2, v6, v8

    .line 105
    .local v2, "newBitmapHeight":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v0, "mCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v6, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    iget-object v6, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget v9, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    int-to-float v9, v9

    invoke-virtual {v0, v6, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    new-instance v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    invoke-direct {v5}, Lcom/letv/leui/util/appsnapshot/CropPicInfo;-><init>()V

    .line 112
    .local v5, "picInfo":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    iput-object v1, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 113
    iput v3, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I

    .line 114
    iput v2, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picHeight:I

    .line 115
    iget-boolean v6, p0, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    iput-boolean v6, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isHead:Z

    .line 116
    iget-boolean v6, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    iput-boolean v6, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->isFoot:Z

    .line 117
    iget v6, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I

    iput v6, v5, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v7

    return-object v5

    .line 102
    .end local v0    # "mCanvas":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "newBitmapHeight":I
    .end local v3    # "newBitmapWidth":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "picInfo":Lcom/letv/leui/util/appsnapshot/CropPicInfo;
    :cond_0
    :try_start_1
    iget v3, p1, Lcom/letv/leui/util/appsnapshot/CropPicInfo;->picWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 129
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 131
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 133
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 136
    .local v7, "dstbmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    return-object v7
.end method

.method public static getRotateBitmapWithRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 147
    if-nez p1, :cond_0

    .line 159
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 151
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 153
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 155
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 158
    .local v7, "dstbmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v7

    .line 159
    goto :goto_0
.end method

.method public static getScreenRotation(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 167
    .local v0, "d":Landroid/view/Display;
    const/4 v1, 0x0

    .line 168
    .local v1, "rotation":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 182
    :goto_0
    mul-int/lit8 v2, v1, -0x1

    return v2

    .line 170
    :pswitch_0
    const/4 v1, 0x0

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    const/16 v1, 0x5a

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    const/16 v1, 0xb4

    .line 177
    goto :goto_0

    .line 179
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScreenShootPic(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "with"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "isLandscape"    # Z

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 90
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 84
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v1, "ScreenShootUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap.with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bitmap.hight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    invoke-static {p0}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 88
    :cond_1
    const-string v1, "ScreenShootUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  top : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    sub-int v2, p3, p2

    invoke-static {p0, v1, p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "corpBitmap":Landroid/graphics/Bitmap;
    move-object p0, v0

    .line 90
    goto :goto_0
.end method

.method public static getScreenShootPic(Landroid/view/View;IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "screenHigh"    # I
    .param p2, "screenWith"    # I
    .param p3, "top"    # I
    .param p4, "end"    # I

    .prologue
    .line 25
    move-object v3, p0

    .line 26
    .local v3, "view":Landroid/view/View;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v4, "ScreenShootUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWith : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  screenHigh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 32
    const-string v4, "ScreenShootUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  screenWith : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "end - top : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p4, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v4, 0x0

    sub-int v5, p4, p3

    invoke-static {v0, v4, p3, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    .local v1, "corpBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    return-object v1
.end method

.method public static getScreenShootPic(Landroid/view/View;Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;IIIIZI)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "adapter"    # Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;
    .param p2, "screenHigh"    # I
    .param p3, "screenWith"    # I
    .param p4, "top"    # I
    .param p5, "end"    # I
    .param p6, "isLandscape"    # Z
    .param p7, "rotation"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScreenShootAdapter;->getScreenShootPic()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    :cond_0
    if-nez v0, :cond_4

    .line 48
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    const-string v3, "ScreenShootUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenWith : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screenHigh : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    .end local v2    # "mCanvas":Landroid/graphics/Canvas;
    :goto_0
    const-string v3, "ScreenShootUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap.with : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  bitmap.hight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz p6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 59
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v3, p3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 63
    :cond_2
    const-string v3, "ScreenShootUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " screenWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenHigh : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bt.width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bt.getHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    const-string v3, "ScreenShootUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenWith : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screenHigh : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .restart local v2    # "mCanvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 68
    if-eqz p6, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 69
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .end local v2    # "mCanvas":Landroid/graphics/Canvas;
    :cond_3
    const-string v3, "ScreenShootUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "top : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  screenWith : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "end - top : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, p5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v3, 0x0

    sub-int v4, p5, p4

    invoke-static {v0, v3, p4, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    .local v1, "corpBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    return-object v1

    .line 53
    .end local v1    # "corpBitmap":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v0, p7}, Lcom/letv/leui/util/appsnapshot/ScreenShootUtil;->getRotateBitmapWithRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method
