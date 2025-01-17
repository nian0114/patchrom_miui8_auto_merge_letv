.class public Lcom/letv/leui/widget/BorderedCircleImageView;
.super Landroid/widget/ImageView;
.source "BorderedCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BorderedCircleImageView$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_BORDER:I = 0x0

.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BorderedCircleImageView"

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:I

.field private mBorderWidth:I

.field private mCircleRadius:I

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

    sput-object v0, Lcom/letv/leui/widget/BorderedCircleImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    sget-object v1, Lcom/android/internal/R$styleable;->LeCustomizedImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-gez v1, :cond_0

    iput v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    iput v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    :cond_1
    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getBorder()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v1

    .local v1, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .local v2, "heightMode":I
    const/4 v0, 0x0

    .local v0, "changed":Z
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_0

    if-ne v4, v6, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v3, v5, 0x2

    const/4 v0, 0x1

    :cond_0
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_1

    if-ne v2, v6, :cond_1

    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v1, v5, 0x2

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v3, p1}, Lcom/letv/leui/widget/BorderedCircleImageView;->resolveSize(II)I

    move-result v5

    invoke-static {v1, p2}, Lcom/letv/leui/widget/BorderedCircleImageView;->resolveSize(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/BorderedCircleImageView;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getHeight()I

    move-result v6

    .local v6, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v1

    if-ge v5, v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v5

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v6, v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v6

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v5, v1, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v6, v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct/range {v0 .. v7}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable;FIIIILandroid/widget/ImageView$ScaleType;)V

    .local v0, "drawable":Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;
    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0    # "drawable":Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCircleRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 2
    .param p1, "roundBackground"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    goto :goto_1
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Lcom/letv/leui/widget/BorderedCircleImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

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
