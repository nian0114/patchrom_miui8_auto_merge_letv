.class public Lcom/letv/leui/widget/LeTopWidgetArc;
.super Landroid/widget/LinearLayout;
.source "LeTopWidgetArc.java"


# static fields
.field private static final mDefaultHight:I = 0x54

.field private static final mDefaultWidth:I = 0x1f8


# instance fields
.field private btnColor:I

.field private btnPressColor:I

.field private isAdd:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDivideWidth:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabCounts:I

.field private mTabHeight:I

.field private mTabLeftBgId:I

.field private mTabNormalBgColor:I

.field private mTabPressBgColor:I

.field private mTabRecBgId:I

.field private mTabRightBgId:I

.field private mTabTextColorId:I

.field private mTabTextSize:I

.field private mTabWidgetBgId:I

.field private mTabWidgetBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x1f8

    const/16 v1, 0x54

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/LeTopWidgetArc;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TabWidgetwidth"    # I
    .param p3, "TabWidgetheight"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTopWidgetArc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    iput p3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    const/16 v1, 0x1f8

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    const/16 v1, 0x54

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    const/16 v1, 0x2a

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextSize:I

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->leTopTabWidget:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    const v1, 0x1080650

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    const v1, 0x1080651

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    const/4 v1, 0x1

    const v2, 0x1080653

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    const v1, 0x1080652

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    const/4 v1, 0x4

    const v2, 0x1080655

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextColorId:I

    const/4 v1, 0x5

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->initView()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v5, 0x1080650

    const/4 v7, -0x1

    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    if-nez v4, :cond_0

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawableBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopWidgetArc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v4, v7, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v4, v7, :cond_2

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    if-nez v4, :cond_3

    const v4, 0x1080651

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    if-nez v4, :cond_4

    const v4, 0x1080653

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    if-nez v4, :cond_5

    const v4, 0x1080652

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    :cond_5
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v4, v7, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .local v1, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v4, v7, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .restart local v3    # "i":I
    :cond_8
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeTopWidgetArc;->setCurrentTab(I)V

    .end local v3    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v0, "tabBtn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int v3, v6, v7

    .local v3, "left":I
    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v6, 0x0

    .local v5, "top":I
    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    add-int v4, v3, v6

    .local v4, "right":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .local v0, "bottom":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .local v1, "dividerStrip":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    add-int/2addr v3, v6

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    add-int v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "return currentIndex is error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must  less than tabCount-1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must more than 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getTabView is null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->removeAllViews()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeTopWidgetArc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopWidgetArc;->setVerticalGravity(I)V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeTopWidgetArc;->setHorizontalGravity(I)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080651

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawableLeftBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080653

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, "drawableRightBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080652

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawableCenterBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060131

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "you haven\'t add tab"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    if-nez v4, :cond_6

    if-ne v4, p1, :cond_4

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_5

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_b

    if-ne v4, p1, :cond_9

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_8

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_a

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_b
    if-ne v4, p1, :cond_e

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_c

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_c
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_d

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_e
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_f

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_f
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabBgColor(II)V
    .locals 0
    .param p1, "pressColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->initView()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->invalidate()V

    return-void
.end method

.method public setTabListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTopWidgetArc;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTabText(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "textId"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 4
    .param p1, "textSzie"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    int-to-float v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabWidgetBg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTopWidgetArc;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetLeftBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetRecBg(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabWidgetRightBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextColorId:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setmDivideWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->requestLayout()V

    return-void
.end method
