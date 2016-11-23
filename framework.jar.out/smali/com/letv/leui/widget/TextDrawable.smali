.class public Lcom/letv/leui/widget/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final appearanceAttributes:[I

.field private static final themeAttributes:[I


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mText:Ljava/lang/CharSequence;

.field private mTextAlignment:Landroid/text/Layout$Alignment;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    sput-object v0, Lcom/letv/leui/widget/TextDrawable;->themeAttributes:[I

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/letv/leui/widget/TextDrawable;->appearanceAttributes:[I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010096
        0x1010097
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    .line 79
    const-string v10, ""

    iput-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 100
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10, v13}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 101
    iget-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/letv/leui/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    iput v11, v10, Landroid/text/TextPaint;->density:F

    .line 102
    iget-object v10, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setDither(Z)V

    .line 104
    const/16 v7, 0xf

    .line 105
    .local v7, "textSize":I
    const/4 v6, 0x0

    .line 106
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    const/4 v5, -0x1

    .line 107
    .local v5, "styleIndex":I
    const/4 v9, -0x1

    .line 110
    .local v9, "typefaceIndex":I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/widget/TextDrawable;->themeAttributes:[I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 112
    .local v2, "appearanceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "ap":Landroid/content/res/TypedArray;
    if-eq v2, v12, :cond_0

    .line 116
    sget-object v10, Lcom/letv/leui/widget/TextDrawable;->appearanceAttributes:[I

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 118
    :cond_0
    if-eqz v1, :cond_2

    .line 119
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 120
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 121
    .local v3, "attr":I
    packed-switch v3, :pswitch_data_0

    .line 119
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 124
    goto :goto_1

    .line 126
    :pswitch_1
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 127
    goto :goto_1

    .line 129
    :pswitch_2
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 130
    goto :goto_1

    .line 132
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 133
    goto :goto_1

    .line 139
    .end local v3    # "attr":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    .end local v4    # "i":I
    :cond_2
    if-eqz v6, :cond_3

    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    :goto_2
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/TextDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    int-to-float v10, v7

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/TextDrawable;->setRawTextSize(F)V

    .line 145
    const/4 v8, 0x0

    .line 146
    .local v8, "tf":Landroid/graphics/Typeface;
    packed-switch v9, :pswitch_data_1

    .line 160
    :goto_3
    invoke-virtual {p0, v8, v5}, Lcom/letv/leui/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 161
    return-void

    .line 142
    .end local v8    # "tf":Landroid/graphics/Typeface;
    .restart local v6    # "textColor":Landroid/content/res/ColorStateList;
    :cond_3
    const/high16 v10, -0x1000000

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_2

    .line 148
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .restart local v8    # "tf":Landroid/graphics/Typeface;
    :pswitch_4
    sget-object v8, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 149
    goto :goto_3

    .line 152
    :pswitch_5
    sget-object v8, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 153
    goto :goto_3

    .line 156
    :pswitch_6
    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_3

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 146
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private measureContent()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 352
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    .line 355
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/TextDrawable;->invalidateSelf()V

    .line 366
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 359
    .local v8, "desired":D
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    double-to-int v3, v8

    iget-object v4, p0, Lcom/letv/leui/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    .line 361
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 213
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 216
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 218
    :cond_0
    return-void
.end method

.method private updateTextColors([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .prologue
    .line 372
    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 373
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 374
    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 375
    const/4 v1, 0x1

    .line 378
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/letv/leui/widget/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 425
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 426
    .local v7, "count":I
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 434
    :goto_0
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 435
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const/4 v0, -0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, -0x1

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/TextDrawable;->updateTextColors([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 442
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 452
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 454
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    if-nez p1, :cond_0

    const-string p1, ""

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 173
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 174
    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    .line 257
    iput-object p1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextAlignment:Landroid/text/Layout$Alignment;

    .line 258
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 260
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 318
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/TextDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 319
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextColors:Landroid/content/res/ColorStateList;

    .line 327
    invoke-virtual {p0}, Lcom/letv/leui/widget/TextDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/TextDrawable;->updateTextColors([I)Z

    .line 328
    return-void
.end method

.method public setTextPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    if-eq v0, p1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPath:Landroid/graphics/Path;

    .line 341
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 343
    :cond_0
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 232
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 234
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 236
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 195
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/letv/leui/widget/TextDrawable;->setTextSize(IF)V

    .line 196
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 204
    iget-object v1, p0, Lcom/letv/leui/widget/TextDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 206
    .local v0, "dimension":F
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/TextDrawable;->setRawTextSize(F)V

    .line 207
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 273
    invoke-direct {p0}, Lcom/letv/leui/widget/TextDrawable;->measureContent()V

    .line 275
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 285
    if-lez p2, :cond_4

    .line 286
    if-nez p1, :cond_1

    .line 287
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 292
    :goto_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 294
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 295
    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 296
    .local v0, "need":I
    iget-object v4, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 297
    iget-object v4, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 303
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    .line 289
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 294
    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    .line 297
    goto :goto_2

    .line 299
    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 300
    iget-object v2, p0, Lcom/letv/leui/widget/TextDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/TextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method
