.class public Lcom/letv/leui/widget/GaussianBlurRenderer;
.super Ljava/lang/Object;
.source "GaussianBlurRenderer.java"


# static fields
.field private static final MAX_BITMAP_SCALE_FACTOR:F = 0.25f

.field private static final MAX_BLUR_RADIUS:F = 25.0f

.field private static final MIN_BITMAP_SCALE_FACTOR:F = 0.01f

.field private static final TAG:Ljava/lang/String; = "BlurRenderer"


# instance fields
.field private mAfterView:Landroid/view/View;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapScaleFactor:F

.field private mBlurEnabled:Z

.field private mBlurRadius:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mInputAllocation:Landroid/renderscript/Allocation;

.field private mLocInScreenOfAfterView:[I

.field private mLocInScreenOfView:[I

.field private mLocationInWindow:[I

.field private mLogTime:Z

.field private mMatrixScale:Landroid/graphics/Matrix;

.field private mMatrixScaleInv:Landroid/graphics/Matrix;

.field private mOutputAllocation:Landroid/renderscript/Allocation;

.field private mRS:Landroid/renderscript/RenderScript;

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mView:Landroid/view/View;

.field private final onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    .line 47
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    .line 372
    new-instance v0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/GaussianBlurRenderer$1;-><init>(Lcom/letv/leui/widget/GaussianBlurRenderer;)V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 78
    iput-object p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "afterView"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;-><init>(Landroid/view/View;)V

    .line 71
    iput-object p2, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/GaussianBlurRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/GaussianBlurRenderer;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/GaussianBlurRenderer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/GaussianBlurRenderer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/GaussianBlurRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/GaussianBlurRenderer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->drawOffscreenBitmap()V

    return-void
.end method

.method private adjustBitmapScaleFactor(I)V
    .locals 3
    .param p1, "radius"    # I

    .prologue
    .line 172
    const/16 v1, 0x64

    if-gt p1, v1, :cond_0

    .line 173
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x41c80000    # 25.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 176
    .local v0, "n":I
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    goto :goto_0
.end method

.method private drawOffscreenBitmap()V
    .locals 18

    .prologue
    .line 262
    const-wide/16 v8, 0x0

    .local v8, "startTime":J
    const-wide/16 v4, 0x0

    .line 264
    .local v4, "endTime":J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v12, :cond_0

    .line 265
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 273
    .local v7, "width":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 282
    .local v3, "height":I
    const/4 v12, 0x1

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 283
    const/4 v12, 0x1

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v12, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eq v12, v3, :cond_3

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_2
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v12, v13}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v13}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    int-to-float v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    int-to-float v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 302
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 313
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    if-eqz v12, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    aput v14, v12, v13

    .line 328
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    neg-int v13, v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    if-eqz v12, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 346
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 347
    .local v6, "locationInOwnWindow":[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x0

    aget v14, v6, v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    const/4 v15, 0x1

    aget v15, v6, v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12}, Landroid/graphics/Canvas;->save()I

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->applyBlur()V

    .line 360
    .end local v6    # "locationInOwnWindow":[I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v12, :cond_4

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 362
    sub-long v12, v4, v8

    long-to-double v12, v12

    const-wide v14, 0x412e848000000000L    # 1000000.0

    div-double v10, v12, v14

    .line 363
    .local v10, "time":D
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v12, "0.00"

    invoke-direct {v2, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 365
    .local v2, "df":Ljava/text/DecimalFormat;
    const-string v12, "BlurRenderer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "take background consumes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " milliseconds"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v2    # "df":Ljava/text/DecimalFormat;
    .end local v10    # "time":D
    :cond_4
    return-void

    .line 324
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    goto/16 :goto_0

    .line 357
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v12, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 82
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 84
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    .line 87
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    .line 90
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    .line 95
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 96
    return-void
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 106
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 111
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 116
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 121
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mRS:Landroid/renderscript/RenderScript;

    .line 124
    :cond_4
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    .line 125
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocationInWindow:[I

    .line 126
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfAfterView:[I

    .line 127
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLocInScreenOfView:[I

    .line 128
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScale:Landroid/graphics/Matrix;

    .line 129
    iput-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    .line 130
    return-void
.end method


# virtual methods
.method public applyBlur()V
    .locals 12

    .prologue
    .line 222
    const-wide/16 v4, 0x0

    .local v4, "startTime":J
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "endTime":J
    iget-boolean v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 231
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 232
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 235
    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mOutputAllocation:Landroid/renderscript/Allocation;

    iget-object v8, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 237
    iget-boolean v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mLogTime:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 239
    sub-long v8, v2, v4

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v6, v8, v10

    .line 240
    .local v6, "time":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, "BlurRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pic width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "px, height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "px, blur time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " milliseconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "time":D
    :cond_1
    return-void
.end method

.method public drawToCanvas(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mMatrixScaleInv:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 256
    :cond_0
    return-void
.end method

.method public getBlurAfterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    return-object v0
.end method

.method public getBlurEnabled()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurRadius:I

    return v0
.end method

.method public isOffscreenCanvas(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->init()V

    .line 157
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 158
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->onPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 168
    invoke-direct {p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->recycle()V

    .line 169
    return-void
.end method

.method public setBitmapScaleFactor(F)V
    .locals 1
    .param p1, "scaleFactor"    # F

    .prologue
    .line 133
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 134
    const p1, 0x3c23d70a    # 0.01f

    .line 139
    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    .line 140
    return-void

    .line 135
    :cond_1
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 136
    const/high16 p1, 0x3e800000    # 0.25f

    goto :goto_0
.end method

.method public setBlurAfterView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mAfterView:Landroid/view/View;

    .line 385
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 0
    .param p1, "blurEnabled"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurEnabled:Z

    .line 148
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 3
    .param p1, "radius"    # I

    .prologue
    .line 184
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string v0, "BlurRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->adjustBitmapScaleFactor(I)V

    .line 193
    int-to-float v0, p1

    iget v1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBitmapScaleFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 195
    const/16 v0, 0x19

    if-le p1, v0, :cond_2

    .line 196
    const/16 p1, 0x19

    .line 199
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mBlurRadius:I

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    goto :goto_0
.end method
