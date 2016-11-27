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

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    sget-object v1, Lcom/android/internal/R$styleable;->LeCustomizedImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    :cond_1
    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getBorder()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getHeight()I

    move-result v6

    .local v6, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredWidth()I

    move-result v1

    if-ge v5, v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredWidth()I

    move-result v5

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v6, v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getMeasuredHeight()I

    move-result v6

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v5, v1, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v6, v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    .local v0, "drawable":Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;
    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0    # "drawable":Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

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

    :cond_6
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

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
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadii(IIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadii(IIII)V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_0

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

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    iget v2, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 2
    .param p1, "roundBackground"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundBackground:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderWidth:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderColor(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setBorderWidth(I)V

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
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->invalidate()V

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mCustomizedXmlParamsLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->mRoundImage:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

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
