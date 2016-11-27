.class public Lcom/letv/leui/widget/BorderedRoundedCornersImageView;
.super Landroid/widget/ImageView;
.source "BorderedRoundedCornersImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BorderedRoundedCornersImageView$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_BORDER:I = 0x0

.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BorderedRoundedCornersImageView"

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:I

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mCustomizedXmlParamsLoaded:Z

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mRoundBackground:Z

.field private mRoundImage:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    .line 53
    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    .line 54
    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    .line 55
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    .line 57
    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->LeCustomizedImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    .line 75
    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    if-gez v1, :cond_0

    .line 76
    iput v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    .line 78
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    .line 79
    iput v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    .line 82
    :cond_1
    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    .line 85
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    .line 86
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    .line 92
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    :cond_4
    return-void

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getBorder()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 262
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 263
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v1, :cond_0

    .line 218
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 223
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 224
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getWidth()I

    move-result v5

    .line 225
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getHeight()I

    move-result v6

    .line 227
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredWidth()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredWidth()I

    move-result v5

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredHeight()I

    move-result v6

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v5, v1, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 240
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v6, v1, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    :cond_4
    new-instance v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct/range {v0 .. v7}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable;FIIIILandroid/widget/ImageView$ScaleType;)V

    .line 249
    .local v0, "drawable":Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;
    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    .end local v0    # "drawable":Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 251
    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 255
    :cond_6
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    if-ne v0, p1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    .line 324
    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    .line 327
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 305
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    .line 306
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadii(IIII)V
    .locals 1
    .param p1, "topLeftRadius"    # I
    .param p2, "topRightRadius"    # I
    .param p3, "bottomLeftRadius"    # I
    .param p4, "bottomRightRadius"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadii(IIII)V

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadii(IIII)V

    .line 370
    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    .line 287
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    .line 292
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    .line 295
    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 195
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 196
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 201
    new-instance v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :cond_1
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 174
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 180
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 183
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 2
    .param p1, "roundBackground"    # Z

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 341
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    .line 342
    if-eqz p1, :cond_3

    .line 343
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 346
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    .line 348
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    .line 350
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    .line 360
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    .line 357
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    goto :goto_1
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 117
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 158
    :goto_0
    return-void

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 125
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 127
    sget-object v0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setWillNotCacheDrawing(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0

    .line 135
    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_4

    .line 136
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 138
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
