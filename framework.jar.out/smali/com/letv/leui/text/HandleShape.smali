.class public Lcom/letv/leui/text/HandleShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "HandleShape.java"


# static fields
.field public static final DEFAULT_BALL_RADIUS:I = 0xa

.field public static final HANDLE_END:I = 0x1

.field public static final HANDLE_INSERT:I = 0x2

.field public static final HANDLE_SECTION:I = 0x3

.field public static final HANDLE_START:I


# instance fields
.field private mBallRadius:F

.field private final mColor:I

.field private mStickHeight:F

.field private final mStickWidth:F

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "color"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/text/HandleShape;-><init>(Landroid/content/Context;III)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "stickHeight"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 32
    iput p2, p0, Lcom/letv/leui/text/HandleShape;->mType:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 34
    .local v2, "res":Landroid/content/res/Resources;
    iput p3, p0, Lcom/letv/leui/text/HandleShape;->mColor:I

    .line 35
    int-to-float v4, p4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 37
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 39
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_2

    .line 40
    const/4 v4, 0x1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v3, v4

    .line 41
    .local v3, "width":F
    iget v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    add-float v0, v4, v5

    .line 43
    .local v0, "height":F
    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickWidth:F

    .line 44
    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 47
    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 48
    const-wide v4, 0x4006666666666666L    # 2.8

    iget v6, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 49
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    mul-float v3, v4, v5

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/letv/leui/text/HandleShape;->resize(FF)V

    .line 76
    return-void

    .line 51
    :cond_1
    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    .line 52
    const/4 v4, 0x1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 53
    const/4 v4, 0x1

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 54
    move v0, v3

    goto :goto_0

    .line 58
    .end local v0    # "height":F
    .end local v3    # "width":F
    :cond_2
    const/4 v4, 0x1

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 59
    .restart local v3    # "width":F
    const/4 v4, 0x1

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 61
    .restart local v0    # "height":F
    const/high16 v4, 0x40800000    # 4.0f

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickWidth:F

    .line 62
    const/4 v4, 0x1

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 63
    const/4 v4, 0x1

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 65
    const/4 v4, 0x2

    if-ne p2, v4, :cond_3

    .line 66
    const-wide v4, 0x4006666666666666L    # 2.8

    iget v6, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 67
    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    iget v6, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    goto :goto_0

    .line 68
    :cond_3
    const/4 v4, 0x3

    if-ne p2, v4, :cond_0

    .line 69
    const/4 v4, 0x1

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 70
    const/4 v4, 0x1

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 71
    move v0, v3

    .line 72
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    iget v5, p0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/text/HandleShape;->getWidth()F

    move-result v20

    .line 82
    .local v20, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/text/HandleShape;->getHeight()F

    move-result v16

    .line 83
    .local v16, "height":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/text/HandleShape;->mStickHeight:F

    .line 84
    .local v6, "stickHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/text/HandleShape;->mStickWidth:F

    move/from16 v18, v0

    .line 85
    .local v18, "stickWidth":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/text/HandleShape;->mBallRadius:F

    .line 86
    .local v10, "ballRadius":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/text/HandleShape;->mColor:I

    .line 87
    .local v15, "color":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/text/HandleShape;->mType:I

    move/from16 v19, v0

    .line 89
    .local v19, "type":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_6

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    sub-float v17, v2, v10

    .line 93
    .local v17, "offsetY":F
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-lez v2, :cond_0

    .line 94
    if-nez v19, :cond_4

    .line 95
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v2, v10

    sub-float v3, v2, v18

    const/4 v4, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v5, v2, v10

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    move/from16 v17, v6

    .line 104
    :cond_0
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    sub-float/2addr v2, v10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    .line 106
    const/high16 v2, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    .line 110
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    .line 111
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p1

    move v11, v10

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    .end local v17    # "offsetY":F
    :goto_2
    if-nez v19, :cond_3

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    :cond_3
    return-void

    .line 98
    .restart local v17    # "offsetY":F
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_0

    .line 99
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v3, v2, v10

    const/4 v4, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v2, v10

    add-float v5, v2, v18

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    move/from16 v17, v6

    goto :goto_0

    .line 113
    :cond_5
    const/4 v11, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v10, v2

    move-object/from16 v9, p1

    move v13, v10

    move-object/from16 v14, p2

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 118
    .end local v17    # "offsetY":F
    :cond_6
    if-nez v19, :cond_7

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v20, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v16, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 122
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_8

    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_8

    .line 123
    sub-float v2, v20, v18

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/4 v4, 0x0

    add-float v2, v20, v18

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v5, v2

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 128
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v20, v2

    sub-float/2addr v2, v10

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    const/high16 v2, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v10, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    const/4 v2, 0x3

    move/from16 v0, v19

    if-eq v0, v2, :cond_9

    .line 132
    const/4 v11, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v10, v2

    move-object/from16 v9, p1

    move v13, v10

    move-object/from16 v14, p2

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2
.end method
