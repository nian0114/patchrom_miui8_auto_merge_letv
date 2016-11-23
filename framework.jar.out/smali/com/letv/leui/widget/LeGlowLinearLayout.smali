.class public Lcom/letv/leui/widget/LeGlowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LeGlowLinearLayout.java"


# instance fields
.field private mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeGlowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeGlowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    .line 28
    sget-object v1, Lcom/android/internal/R$styleable;->LeGlowDelegate:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowLinearLayout;->setEnabledAnimation(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10601c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowLinearLayout;->setPressColor(I)V

    .line 34
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v2, v2, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowLinearLayout;->setPressScaleMultiple(F)V

    .line 35
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v2, v2, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowLinearLayout;->setPressScaleAlpha(I)V

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->draw(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 44
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    .line 45
    return-void
.end method

.method public setEnabledAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    .line 62
    return-void
.end method

.method public setPressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectColor(I)V

    .line 66
    return-void
.end method

.method public setPressScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleAlpha(I)V

    .line 74
    return-void
.end method

.method public setPressScaleMultiple(F)V
    .locals 1
    .param p1, "multiple"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleMultiple(F)V

    .line 70
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowLinearLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setPressed(Z)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 58
    return-void
.end method
