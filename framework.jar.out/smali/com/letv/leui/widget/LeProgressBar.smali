.class public Lcom/letv/leui/widget/LeProgressBar;
.super Landroid/widget/ProgressBar;
.source "LeProgressBar.java"


# static fields
.field private static final CIRCLE_TEXT_TYPE:I = 0x2

.field private static final CIRCLE_TYPE:I = 0x0

.field private static final HORIZONTAL_TYPE:I = 0x1


# instance fields
.field private DEBUG:Z

.field private LOG_TAG:Ljava/lang/String;

.field animator:Landroid/animation/ValueAnimator;

.field backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private centerX:I

.field private centerY:I

.field circleRadius:I

.field private copyIphoneDividerWidth:I

.field horizontalProgressHeight:I

.field private inCompleteColor:I

.field private iphonePaint:Landroid/graphics/Paint;

.field isAnimated:Z

.field private isCopyIphone:Z

.field private isPause:Z

.field private loadingColor:I

.field private loadingZebra:I

.field private mSaveLayerRectF:Landroid/graphics/RectF;

.field private maxHeight:I

.field private maxWidth:I

.field private minHeight:I

.field private minWidth:I

.field offset:I

.field private onlyIndeterminate:Z

.field private oval:Landroid/graphics/RectF;

.field p:Landroid/graphics/Path;

.field private padding:F

.field private paintProgressCircle:Landroid/graphics/Paint;

.field private paintProgressText:Landroid/graphics/Paint;

.field private paintProgressUnCompleteCircle:Landroid/graphics/Paint;

.field pi:F

.field private progressBackgroundColor:I

.field private progressBarCircleRect:Landroid/graphics/RectF;

.field private progressColor:I

.field progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private progressString:Ljava/lang/String;

.field private progressTextRect:Landroid/graphics/Rect;

.field roundRadius:I

.field shader:Landroid/graphics/BitmapShader;

.field shapeBmp:Landroid/graphics/Bitmap;

.field shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private strokeWidth:I

.field private sweepAngle:F

.field private textColor:I

.field private textSize:I

.field private type:I

.field zebraLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class v1, Lcom/letv/leui/widget/LeProgressBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->LOG_TAG:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeProgressBar;->DEBUG:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    iput v3, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    iput v3, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    const/16 v1, 0x2d

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    const v1, 0x40490fda

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    sget-object v1, Lcom/android/internal/R$styleable;->LeProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "t":Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-ne v5, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeProgressBar;->obtainAttribute(Landroid/util/AttributeSet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/16 v1, 0x9

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    const/4 v1, 0x4

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    const/4 v1, 0x7

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v1, "mOnlyIndeterminate"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    const-string v1, "mMaxWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->maxWidth:I

    const-string v1, "mMaxHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->maxHeight:I

    const-string v1, "mMinWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    const-string v1, "mMinHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->initAnimator()V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeProgressBar;->createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->createShaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0
.end method

.method private createRoundRectShape(F)Landroid/graphics/drawable/shapes/Shape;
    .locals 4
    .param p1, "radiu"    # F

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 v2, 0x2

    aput p1, v0, v2

    const/4 v2, 0x3

    aput p1, v0, v2

    const/4 v2, 0x4

    aput p1, v0, v2

    const/4 v2, 0x5

    aput p1, v0, v2

    const/4 v2, 0x6

    aput p1, v0, v2

    const/4 v2, 0x7

    aput p1, v0, v2

    .local v0, "outerR":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .local v1, "shape":Landroid/graphics/drawable/shapes/RoundRectShape;
    return-object v1
.end method

.method private drawColorBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "color"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private drawLoading(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->createShaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isAnimated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    :goto_0
    const/16 v2, 0x1f

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->updateProgressBounds()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .local v8, "step":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v0

    if-gt v7, v0, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, v7

    mul-float/2addr v1, v8

    add-float/2addr v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v3, v7

    mul-float/2addr v3, v8

    add-float/2addr v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->iphonePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "step":F
    :cond_0
    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getProgressAngle()F
    .locals 3

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private initAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LeProgressBar$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeProgressBar$1;-><init>(Lcom/letv/leui/widget/LeProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LeProgressBar$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeProgressBar$2;-><init>(Lcom/letv/leui/widget/LeProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private obtainAttribute(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->LeProgressBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    const/16 v1, 0xc

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    const/16 v1, 0xd

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    const-string v1, "mMinWidth"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    const-string v1, "mMinHeight"

    invoke-static {p0, v1}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    const-string v2, "helve-neue-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->inCompleteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    return-void
.end method

.method private updateProgressBounds()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getMax()I

    move-result v3

    int-to-float v1, v3

    .local v1, "max":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v3

    int-to-float v2, v3

    .local v2, "progress":F
    new-instance v0, Landroid/graphics/Rect;

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    :goto_0
    add-int/2addr v5, v3

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    :goto_1
    add-int/2addr v6, v3

    iget v7, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/2addr v3, v7

    int-to-float v7, v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v3

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v8

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    sub-int v8, v3, v8

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    :goto_3
    sub-int v3, v8, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v8, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I

    :cond_0
    sub-int v4, v7, v4

    invoke-direct {v0, v5, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method createShaderBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, "paint1":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/LeProgressBar;->drawColorBitmap(Landroid/graphics/Bitmap;I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    shl-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->offset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->p:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeBmp:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public drawProgressBarWithText(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressString:Ljava/lang/String;

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->progressTextRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressUnCompleteCircle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    iget-object v5, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getHorizontalProgressHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    return v0
.end method

.method public getLoadingColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    return v0
.end method

.method public getLoadingZebra()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    return v0
.end method

.method public getZebraLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawLoading(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawProgress(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeProgressBar;->onlyIndeterminate:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v4

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v4, v9

    int-to-float v4, v4

    invoke-direct {v8, v0, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v8, "temp":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    add-float/2addr v2, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, v8, Landroid/graphics/RectF;->right:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeProgressBar;->getProgressAngle()F

    move-result v3

    .local v3, "angle":F
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-direct {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v7, 0x0

    .local v7, "offsetY":F
    const/4 v6, 0x0

    .local v6, "offsetX":F
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v6, v0

    :goto_1
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget-object v9, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-direct {v0, v1, v2, v4, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_4
    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v6, v0

    goto/16 :goto_1

    :cond_5
    const/high16 v0, 0x43870000    # 270.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float v4, v3, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v6, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v7, v0

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->oval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->pi:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x43870000    # 270.0f

    add-float/2addr v4, v3

    mul-float/2addr v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v6, v0

    goto/16 :goto_1

    .end local v3    # "angle":F
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "offsetX":F
    .end local v7    # "offsetY":F
    .end local v8    # "temp":Landroid/graphics/RectF;
    :cond_7
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeProgressBar;->drawProgressBarWithText(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "dw":I
    const/4 v0, 0x0

    .local v0, "dh":I
    :try_start_0
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v3, v6, :cond_0

    const/16 v4, 0xc8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    if-ne v2, v6, :cond_1

    const/16 v4, 0xc8

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    div-int/lit8 v4, v1, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    div-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    int-to-float v7, v1

    iget v8, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v7, v8

    int-to-float v8, v0

    iget v9, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .end local v2    # "heightMode":I
    .end local v3    # "widthMode":I
    :goto_0
    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lcom/letv/leui/widget/LeProgressBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, p2, v5}, Lcom/letv/leui/widget/LeProgressBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LeProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    if-nez v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    if-ge v4, v5, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->minWidth:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->minHeight:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_1
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->circleRadius:I

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->roundRadius:I

    add-int/2addr v4, v5

    mul-int/lit8 v0, v4, 0x2

    move v1, v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    iget v0, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    iget-boolean v4, p0, Lcom/letv/leui/widget/LeProgressBar;->isCopyIphone:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->copyIphoneDividerWidth:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    iget v1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerX:I

    div-int/lit8 v1, p2, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeProgressBar;->centerY:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBarCircleRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    int-to-float v4, p1

    iget v5, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v4, v5

    int-to-float v5, p2

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->padding:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .local v0, "centerX":F
    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->backgroundProgressShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeProgressBar;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeProgressBar;->mSaveLayerRectF:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    return-void
.end method

.method public setHorizontalProgressHeight(I)V
    .locals 0
    .param p1, "horizontalProgressHeight"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->horizontalProgressHeight:I

    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 0
    .param p1, "loadingColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingColor:I

    return-void
.end method

.method public setLoadingZebra(I)V
    .locals 0
    .param p1, "loadingZebra"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->loadingZebra:I

    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "isPause"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeProgressBar;->isPause:Z

    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "progressBackgroundColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressBackgroundColor:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "progressColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->progressColor:I

    return-void
.end method

.method public setProgressTextTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressCircle:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->invalidate()V

    return-void
.end method

.method public declared-synchronized setProgressWithText(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    monitor-enter p0

    int-to-float v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    :try_start_0
    iput v0, p0, Lcom/letv/leui/widget/LeProgressBar;->sweepAngle:F

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->textSize:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeProgressBar;->paintProgressText:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeProgressBar;->invalidate()V

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->type:I

    return-void
.end method

.method public setZebraLength(I)V
    .locals 0
    .param p1, "zebraLength"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeProgressBar;->zebraLength:I

    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    return-void
.end method
