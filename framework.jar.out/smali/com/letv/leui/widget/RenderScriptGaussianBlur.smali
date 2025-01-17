.class public Lcom/letv/leui/widget/RenderScriptGaussianBlur;
.super Ljava/lang/Object;
.source "RenderScriptGaussianBlur.java"


# static fields
.field private static final MAX_BLUR_RADIUS:I = 0x19


# instance fields
.field private rs:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->rs:Landroid/renderscript/RenderScript;

    return-void
.end method


# virtual methods
.method public blur(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "radius"    # I
    .param p2, "bitmapOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    return-object v12

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .local v16, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .local v6, "config":Landroid/graphics/Bitmap$Config;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v12, p2

    .local v12, "ret":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v17, 0x19

    move/from16 v0, p1

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p2

    if-eq v12, v0, :cond_2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->blur2(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_0

    .end local v12    # "ret":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v0, v16

    invoke-static {v0, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "ret":Landroid/graphics/Bitmap;
    goto :goto_1

    :cond_4
    div-int/lit8 v17, p1, 0x19

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v10

    .local v10, "n":I
    const/high16 v17, 0x3f800000    # 1.0f

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v3, v17, v18

    .local v3, "bitmapScaleFactor":F
    div-int v15, v16, v10

    .local v15, "smallWidth":I
    div-int v14, v7, v10

    .local v14, "smallHeight":I
    invoke-static {v15, v14, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "smallBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .local v8, "matrixScale":Landroid/graphics/Matrix;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .local v9, "matrixScaleInv":Landroid/graphics/Matrix;
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v14

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v3

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v11

    .local v11, "resizedRadius":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->blur2(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .local v5, "canvas2":Landroid/graphics/Canvas;
    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v13, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public blur2(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "radius"    # I
    .param p2, "bitmapOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v3, 0x19

    if-le p1, v3, :cond_4

    const/16 p1, 0x19

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v3, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .local v0, "input":Landroid/renderscript/Allocation;
    iget-object v3, p0, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .local v1, "output":Landroid/renderscript/Allocation;
    iget-object v3, p0, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->rs:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Lcom/letv/leui/widget/RenderScriptGaussianBlur;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    .local v2, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    :cond_3
    return-object p2

    .end local v0    # "input":Landroid/renderscript/Allocation;
    .end local v1    # "output":Landroid/renderscript/Allocation;
    .end local v2    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    :cond_4
    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0
.end method
