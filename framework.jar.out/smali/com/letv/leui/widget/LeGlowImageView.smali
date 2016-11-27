.class public Lcom/letv/leui/widget/LeGlowImageView;
.super Landroid/widget/ImageView;
.source "LeGlowImageView.java"


# instance fields
.field private mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeGlowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeGlowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    sget-object v1, Lcom/android/internal/R$styleable;->LeGlowDelegate:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setEnabledAnimation(Z)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressColor(I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v2, v2, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressScaleMultiple(F)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v2, v2, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressScaleAlpha(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEnabledAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setPressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectColor(I)V

    return-void
.end method

.method public setPressScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleAlpha(I)V

    return-void
.end method

.method public setPressScaleMultiple(F)V
    .locals 1
    .param p1, "multiple"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleMultiple(F)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setPressed(Z)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method
