.class public Lcom/letv/leui/widget/BlurRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "BlurRelativeLayout.java"


# instance fields
.field private mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/BlurRelativeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BlurRelativeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BlurRelativeLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    new-instance v2, Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->LeBlurView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .local v1, "radius":I
    iget-object v2, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "radius":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->isOffscreenCanvas(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->applyBlur()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->drawToCanvas(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBlurEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurRadius()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public setBlurAfterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurAfterView(Landroid/view/View;)V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1
    .param p1, "blurEnabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->invalidate()V

    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->invalidate()V

    goto :goto_0
.end method

.method public setBlurRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BlurRelativeLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurRelativeLayout;->invalidate()V

    return-void
.end method
