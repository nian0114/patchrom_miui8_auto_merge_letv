.class public Lcom/letv/leui/util/LeHslConvertColorUtils;
.super Ljava/lang/Object;
.source "LeHslConvertColorUtils.java"


# static fields
.field private static final COLOR_L_TO_PERCENTAGE:I = 0x64

.field private static final COLOR_SPACE:I = 0x16

.field private static final HSL_ARRAY_LENGTH:I = 0x3

.field private static final HSL_L_MAX_VALUE:I = 0x64

.field private static final HSL_L_MID_VALUE:I = 0x32

.field private static final HSL_L_MIN_VALUE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/util/LeHslConvertColorUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeHslConvertColorUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F

    .prologue
    const/4 v10, 0x0

    aget v3, p0, v10

    .local v3, "h":F
    const/4 v10, 0x1

    aget v8, p0, v10

    .local v8, "s":F
    const/4 v10, 0x2

    aget v5, p0, v10

    .local v5, "l":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v10, v8

    .local v1, "c":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    .local v6, "m":F
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x42700000    # 60.0f

    div-float v11, v3, v11

    const/high16 v12, 0x40000000    # 2.0f

    rem-float/2addr v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v9, v1, v10

    .local v9, "x":F
    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    .local v4, "hueSegment":I
    const/4 v7, 0x0

    .local v7, "r":I
    const/4 v2, 0x0

    .local v2, "g":I
    const/4 v0, 0x0

    .local v0, "b":I
    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_0
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_4
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_5
    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000    # 255.0f

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static RGBToHSL(III[F)V
    .locals 12
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "hsl"    # [F

    .prologue
    int-to-float v9, p0

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v7, v9, v10

    .local v7, "rf":F
    int-to-float v9, p1

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v2, v9, v10

    .local v2, "gf":F
    int-to-float v9, p2

    const/high16 v10, 0x437f0000    # 255.0f

    div-float v0, v9, v10

    .local v0, "bf":F
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .local v5, "max":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .local v6, "min":F
    sub-float v1, v5, v6

    .local v1, "deltaMaxMin":F
    add-float v9, v5, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    .local v4, "l":F
    cmpl-float v9, v5, v6

    if-nez v9, :cond_0

    const/4 v8, 0x0

    .local v8, "s":F
    move v3, v8

    .local v3, "h":F
    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v10, v3

    const/high16 v11, 0x43b40000    # 360.0f

    rem-float/2addr v10, v11

    aput v10, p3, v9

    const/4 v9, 0x1

    aput v8, p3, v9

    const/4 v9, 0x2

    aput v4, p3, v9

    return-void

    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_0
    cmpl-float v9, v5, v7

    if-nez v9, :cond_1

    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000    # 6.0f

    rem-float v3, v9, v10

    .restart local v3    # "h":F
    :goto_1
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    .restart local v8    # "s":F
    goto :goto_0

    .end local v3    # "h":F
    .end local v8    # "s":F
    :cond_1
    cmpl-float v9, v5, v2

    if-nez v9, :cond_2

    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1

    .end local v3    # "h":F
    :cond_2
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000    # 4.0f

    add-float v3, v9, v10

    .restart local v3    # "h":F
    goto :goto_1
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .prologue
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/letv/leui/util/LeHslConvertColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method private static getBetterColorLight(II)I
    .locals 2
    .param p0, "textColorL"    # I
    .param p1, "bgColorL"    # I

    .prologue
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .end local p0    # "textColorL":I
    :goto_0
    return p0

    .restart local p0    # "textColorL":I
    :cond_0
    if-ge p0, p1, :cond_2

    add-int/lit8 p0, p1, -0x16

    if-gez p0, :cond_1

    add-int/lit8 p0, p1, 0x16

    :cond_1
    :goto_1
    invoke-static {p0, p1}, Lcom/letv/leui/util/LeHslConvertColorUtils;->getBetterColorLight(II)I

    move-result p0

    goto :goto_0

    :cond_2
    if-le p0, p1, :cond_3

    add-int/lit8 p0, p1, 0x16

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    add-int/lit8 p0, p1, -0x16

    goto :goto_1

    :cond_3
    const/16 v0, 0x32

    if-ge p0, v0, :cond_4

    add-int/lit8 p0, p1, 0x16

    goto :goto_1

    :cond_4
    add-int/lit8 p0, p1, -0x16

    goto :goto_1
.end method

.method public static getTextAdapterColor(II)I
    .locals 11
    .param p0, "textColorValue"    # I
    .param p1, "bgColorValue"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/high16 v9, 0x42c80000    # 100.0f

    new-array v4, v6, [F

    .local v4, "textColorHsl":[F
    new-array v0, v6, [F

    .local v0, "bgColorHsl":[F
    invoke-static {p0, v4}, Lcom/letv/leui/util/LeHslConvertColorUtils;->colorToHSL(I[F)V

    invoke-static {p1, v0}, Lcom/letv/leui/util/LeHslConvertColorUtils;->colorToHSL(I[F)V

    aget v6, v4, v10

    mul-float/2addr v6, v9

    float-to-int v5, v6

    .local v5, "textOriginalColorL":I
    aget v6, v0, v10

    mul-float/2addr v6, v9

    float-to-int v1, v6

    .local v1, "bgOriginalColorL":I
    sget-object v6, Lcom/letv/leui/util/LeHslConvertColorUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Original textColorL is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>bgColorL is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v1}, Lcom/letv/leui/util/LeHslConvertColorUtils;->getBetterColorLight(II)I

    move-result v3

    .local v3, "convertTextColorL":I
    int-to-float v6, v3

    div-float/2addr v6, v9

    aput v6, v4, v10

    invoke-static {v4}, Lcom/letv/leui/util/LeHslConvertColorUtils;->HSLToColor([F)I

    move-result v2

    .local v2, "convertTextColor":I
    sget-object v6, Lcom/letv/leui/util/LeHslConvertColorUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convert textColorL is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">>bgColorL is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
