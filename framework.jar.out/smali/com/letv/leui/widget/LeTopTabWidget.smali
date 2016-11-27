.class public Lcom/letv/leui/widget/LeTopTabWidget;
.super Landroid/widget/LinearLayout;
.source "LeTopTabWidget.java"


# instance fields
.field private btnColor:Landroid/content/res/ColorStateList;

.field private btnPressColor:Landroid/content/res/ColorStateList;

.field private isAdd:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDivideWidth:I

.field private mTabCounts:I

.field private mTabHeight:I

.field private mTabLeftBgId:I

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
    const/4 v1, 0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/16 v0, 0x1f8

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    const/16 v0, 0x54

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/16 v1, 0x1f8

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    const/16 v1, 0x54

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    const/16 v1, 0x2a

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->leTopTabWidget:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const v2, 0x1080650

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    const v1, 0x1080651

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    const/4 v1, 0x1

    const v2, 0x1080653

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    const v1, 0x1080652

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    const/4 v1, 0x4

    const v2, 0x1080655

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    const/4 v1, 0x5

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->initView()V

    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "tabCounts must  more than two"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    if-nez v3, :cond_1

    const v3, 0x1080650

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTopTabWidget;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    if-ge v1, v3, :cond_8

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .local v2, "tabBtn":Landroid/widget/Button;
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    if-nez v3, :cond_2

    const v3, 0x1080655

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "btnColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    if-nez v3, :cond_3

    const v3, 0x1080651

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    :cond_3
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_6

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    if-nez v3, :cond_5

    const v3, 0x1080653

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    if-nez v3, :cond_7

    const v3, 0x1080652

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .end local v0    # "btnColor":Landroid/content/res/ColorStateList;
    .end local v2    # "tabBtn":Landroid/widget/Button;
    :cond_8
    return-void
.end method


# virtual methods
.method public addTab(III)V
    .locals 0
    .param p1, "tabCounts"    # I
    .param p2, "TabWidgetwidth"    # I
    .param p3, "TabWidgetheight"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    iput p2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    iput p3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->initView()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->requestLayout()V

    return-void
.end method

.method public getCurrentTab()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

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
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

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
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

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
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    iget v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->removeAllViews()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeTopTabWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/letv/leui/widget/LeTopTabWidget;->setPadding(IIII)V

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopTabWidget;->setVerticalGravity(I)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeTopTabWidget;->setHorizontalGravity(I)V

    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    if-nez v0, :cond_3

    if-ne v0, p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    if-ne v0, p1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    if-ne v0, p1, :cond_6

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTopTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

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
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTopTabWidget;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetLeftBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetRecBg(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

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
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public setTabWidgetTextColor(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "btnColor":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setmDivideWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->requestLayout()V

    return-void
.end method
