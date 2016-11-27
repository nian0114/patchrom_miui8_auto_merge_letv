.class public final Lcom/letv/leui/widget/TintedBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TintedBitmapDrawable.java"


# instance fields
.field private alpha:I

.field private tint:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "tint"    # I

    .prologue
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput p3, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->tint:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->alpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "tint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput p3, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->tint:I

    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->alpha:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/TintedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    iget v2, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->tint:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v1, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->tint:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/TintedBitmapDrawable;->alpha:I

    return-void
.end method
