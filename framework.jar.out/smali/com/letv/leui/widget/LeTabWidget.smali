.class public Lcom/letv/leui/widget/LeTabWidget;
.super Landroid/widget/TabWidget;
.source "LeTabWidget.java"


# instance fields
.field private mTopStrip:Landroid/graphics/drawable/Drawable;

.field private mTopStripHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeTabWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeTabWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->LeTabWidget:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .local v2, "topStripRes":I
    if-eq v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v1, v3

    .local v1, "topStripHeight":I
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iput v1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getLeft()I

    move-result v1

    .local v1, "left":I
    const/4 v3, 0x0

    .local v3, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getRight()I

    move-result v2

    .local v2, "right":I
    iget v0, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    .local v0, "bottom":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .local v4, "topStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getTabIcon(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .local v1, "tab":Landroid/view/View;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "img":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method public getTabTitle(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    .local v0, "tab":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "tv":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitleTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTabWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v1

    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setTitleTextColor(II)V
    .locals 10
    .param p1, "unselected_color"    # I
    .param p2, "selected_color"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v3, v9, [[I

    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v8

    .local v3, "states":[[I
    new-array v0, v9, [I

    aput p2, v0, v7

    aput p1, v0, v8

    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .local v2, "list":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeTabWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v4

    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->invalidate()V

    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->invalidate()V

    return-void
.end method
