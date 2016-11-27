.class public Lcom/letv/leui/util/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final DEFAULT_SHADOW_OFFSETY:I = 0x2

.field private static final DEFAULT_SHADOW_RADIUS:I = 0x4

.field private static final DEFAULT_STROKE_RADIUS:I = 0x1

.field private static final SHADOW_ALPHA_VALUE:I = 0x4d

.field private static final STROKE_ALPHA_VALUE:I = 0x4d


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShadowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/16 v3, 0x4d

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v7}, Lcom/letv/leui/util/DrawableUtils;->createShadowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createShadowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIIIII)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "strokeRadius"    # I
    .param p3, "strokeAlpha"    # I
    .param p4, "shadowRadius"    # I
    .param p5, "shadowAlpha"    # I
    .param p6, "offsetX"    # I
    .param p7, "offsetY"    # I

    .prologue
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/DrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, "mapBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v11, :cond_0

    mul-int/lit8 v17, p4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    add-int v10, v17, v18

    .local v10, "createWidth":I
    mul-int/lit8 v17, p4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    add-int v9, v17, v18

    .local v9, "createHeight":I
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "createBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "bitmapPaint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .local v14, "paint":Landroid/graphics/Paint;
    const v17, 0x1060149

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .local v7, "color":I
    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [I

    .local v13, "offsetXY":[I
    new-instance v5, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .local v5, "blurFilterStroke":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v14, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v11, v14, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .local v16, "strokeBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v10, v17

    shr-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v18, v9, v18

    shr-int/lit8 v18, v18, 0x1

    sub-int v18, v18, p7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    sget-object v18, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .local v4, "blurFilterOutter":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v11, v14, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .local v15, "shadowBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v10, v17

    shr-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v18, v9, v18

    shr-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v15, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v10, v17

    shr-int/lit8 v17, v17, 0x1

    sub-int v17, v17, p6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    sub-int v18, v9, v18

    shr-int/lit8 v18, v18, 0x1

    sub-int v18, v18, p7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p1

    invoke-direct {v12, v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v12    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1, v10, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .end local v3    # "bitmapPaint":Landroid/graphics/Paint;
    .end local v4    # "blurFilterOutter":Landroid/graphics/BlurMaskFilter;
    .end local v5    # "blurFilterStroke":Landroid/graphics/BlurMaskFilter;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "color":I
    .end local v8    # "createBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "createHeight":I
    .end local v10    # "createWidth":I
    .end local v13    # "offsetXY":[I
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "shadowBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "strokeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v12, :cond_1

    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p0

    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 p0, v12

    goto :goto_0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/LevelListDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/PictureDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/RotateDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v2, :cond_3

    instance-of v2, p0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method
