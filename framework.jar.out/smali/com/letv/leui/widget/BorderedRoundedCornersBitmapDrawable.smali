.class public Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderedRoundedCornersBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BorderedRoundedCornersBitmapDrawable"


# instance fields
.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderPath:Landroid/graphics/Path;

.field public mBorderRadiusArray:[F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mDrawablePath:Landroid/graphics/Path;

.field public mDrawableRadiusArray:[F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mPathIsDirty:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cornerRadius"    # F
    .param p3, "border"    # I
    .param p4, "borderColor"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 50
    iput-boolean v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    .line 53
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRadiusArray:[F

    .line 54
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    .line 88
    iput p3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    .line 89
    iput p4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    .line 93
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    iput p2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    .line 96
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {p0, p5}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable;FIIIILandroid/widget/ImageView$ScaleType;)V
    .locals 6
    .param p1, "colorDrawable"    # Landroid/graphics/drawable/ColorDrawable;
    .param p2, "cornerRadius"    # F
    .param p3, "border"    # I
    .param p4, "borderColor"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 50
    iput-boolean v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 52
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    .line 53
    iput-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRadiusArray:[F

    .line 54
    iput-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    .line 59
    iput p3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    .line 60
    iput p4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    .line 62
    iput p5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    .line 63
    iput p6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    .line 64
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iput p2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    .line 67
    iput-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    invoke-virtual {p0, p7}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    return-void
.end method

.method private buildPathIfDirty()V
    .locals 5

    .prologue
    .line 444
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_3

    .line 445
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 446
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 448
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    if-eqz v1, :cond_2

    .line 449
    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRadiusArray:[F

    .line 451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v1, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 458
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 461
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    .line 463
    :cond_3
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 331
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 332
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 347
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v2, "height":I
    .local v3, "width":I
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 336
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 337
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 338
    .restart local v2    # "height":I
    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 339
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 341
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 344
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "radius"    # F
    .param p2, "border"    # I
    .param p3, "borderColor"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 356
    if-eqz p0, :cond_5

    .line 357
    instance-of v0, p0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_3

    move-object v10, p0

    .line 358
    check-cast v10, Landroid/graphics/drawable/TransitionDrawable;

    .line 359
    .local v10, "td":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v9

    .line 361
    .local v9, "num":I
    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    .line 362
    .local v7, "drawableList":[Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_2

    .line 363
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 364
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v8, v8}, Landroid/graphics/drawable/TransitionDrawable;->setId(II)V

    .line 365
    instance-of v0, v6, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    instance-of v0, v6, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    aput-object v6, v7, v8

    .line 362
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 370
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-static {v6}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    aput-object v0, v7, v8

    goto :goto_1

    .line 376
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_4

    .line 377
    aget-object v0, v7, v8

    invoke-virtual {v10, v8, v0}, Landroid/graphics/drawable/TransitionDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 376
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 382
    .end local v7    # "drawableList":[Landroid/graphics/drawable/Drawable;
    .end local v8    # "i":I
    .end local v9    # "num":I
    .end local v10    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_3
    invoke-static {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 383
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_5

    .line 384
    new-instance v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    move-object v10, v0

    .line 390
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    return-object v10

    :cond_5
    move-object v10, p0

    goto :goto_3
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;FLandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "radius"    # F
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-static {p0, p1, v0, v0, p2}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    .prologue
    .line 437
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    .line 438
    if-nez p1, :cond_0

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    .line 441
    :cond_0
    return-void
.end method

.method private setMatrix()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 157
    sget-object v3, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 242
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 243
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 245
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 246
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 249
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_0

    .line 250
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 253
    :cond_0
    return-void

    .line 160
    :pswitch_0
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 161
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 165
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, v9

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 172
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 180
    .local v1, "dy":F
    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 182
    .local v2, "scale":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v9

    .line 188
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v9

    float-to-int v4, v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v5, v1, v9

    float-to-int v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 184
    .end local v2    # "scale":F
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 185
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v9

    goto :goto_1

    .line 194
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :pswitch_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 196
    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 197
    const/high16 v2, 0x3f800000    # 1.0f

    .line 203
    .restart local v2    # "scale":F
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v0, v3

    .line 204
    .restart local v0    # "dx":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    int-to-float v1, v3

    .line 206
    .restart local v1    # "dy":F
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 207
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 209
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 210
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 211
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 213
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 199
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "scale":F
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .restart local v2    # "scale":F
    goto :goto_2

    .line 216
    .end local v2    # "scale":F
    :pswitch_3
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 217
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 218
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 219
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 224
    :pswitch_4
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 225
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 226
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 227
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 229
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 232
    :pswitch_5
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 233
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 235
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 237
    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    if-eqz v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->buildPathIfDirty()V

    .line 288
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 303
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 295
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    if-lez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 297
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, -0x3

    return v0
.end method

.method protected getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 261
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 279
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setMatrix()V

    .line 280
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 313
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 122
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 124
    .local v0, "height":I
    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    if-eq v0, v2, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    .line 128
    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 130
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setMatrix()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 133
    iget-object v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderColor:I

    .line 423
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 416
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    .line 419
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 318
    return-void
.end method

.method public setCornerRadii(IIII)V
    .locals 3
    .param p1, "topLeftRadius"    # I
    .param p2, "topRightRadius"    # I
    .param p3, "bottomLeftRadius"    # I
    .param p4, "bottomRightRadius"    # I

    .prologue
    .line 428
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p2

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p2

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, p4

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p3

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p3

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadii([F)V

    .line 434
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .prologue
    const/4 v1, 0x0

    .line 406
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mCornerRadius:F

    .line 408
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderRadiusArray:[F

    .line 409
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 410
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawableRadiusArray:[F

    .line 411
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mDrawablePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mPathIsDirty:Z

    .line 413
    return-void
.end method

.method protected setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 143
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 144
    invoke-direct {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setMatrix()V

    .line 146
    :cond_1
    return-void
.end method
