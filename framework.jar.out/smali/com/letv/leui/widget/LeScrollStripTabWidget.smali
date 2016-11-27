.class public Lcom/letv/leui/widget/LeScrollStripTabWidget;
.super Lcom/letv/leui/widget/BlurLinearLayout;
.source "LeScrollStripTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeScrollStripTabWidget$1;,
        Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;,
        Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_TIME_MS:I = 0x15e


# instance fields
.field private mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mBottomStripHeight:I

.field private mDrawScrollStripWhenTabChangeByClick:Z

.field private mLastClickTime:J

.field private mScrollStripBoundsRect:Landroid/graphics/Rect;

.field private mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollStripHeight:I

.field private mScrollStripLenChangeable:Z

.field private mScrollStripLenExtension:I

.field private mScrollStripMoved:Z

.field private mScrollStripOffset:F

.field private mSelectedTab:I

.field private mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

.field private mTopStripDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopStripHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->initTabWidget()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeScrollStripTabWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeScrollStripTabWidget;)J
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    iget-wide v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide p1
.end method

.method private computeStripBoundsRect()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_dynamicLen()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_fixLen()V

    goto :goto_0
.end method

.method private computeStripBoundsRect_dynamicLen()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .local v9, "selectedVg":Landroid/view/ViewGroup;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "selectedText":Landroid/view/View;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getNextTab()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "nextVg":Landroid/view/ViewGroup;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "nextText":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    .local v10, "selectedVgLeft":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v11

    .local v11, "selectedVgRight":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int v7, v12, v10

    .local v7, "selectedTextLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    add-int v8, v12, v10

    .local v8, "selectedTextRight":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v2, v12, v13

    .local v2, "nextTextLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v3, v12, v13

    .local v3, "nextTextRight":I
    int-to-float v12, v7

    sub-int v13, v2, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    sub-int v0, v12, v13

    .local v0, "left":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v12, :cond_0

    if-ge v0, v10, :cond_0

    move v0, v10

    :cond_0
    int-to-float v12, v8

    sub-int v13, v3, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    add-int v5, v12, v13

    .local v5, "right":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_1

    if-le v5, v11, :cond_1

    move v5, v11

    :cond_1
    iget-object v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v14

    invoke-virtual {v12, v0, v13, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private computeStripBoundsRect_fixLen()V
    .locals 9

    .prologue
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "selectedChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .local v3, "selectedChildLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .local v4, "selectedChildRight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    .local v5, "selectedChildWidth":I
    int-to-float v6, v3

    int-to-float v7, v5

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .local v0, "left":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v6, :cond_0

    if-ge v0, v3, :cond_0

    move v0, v3

    :cond_0
    add-int v1, v0, v5

    .local v1, "right":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_1

    if-le v1, v4, :cond_1

    move v1, v4

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getNextTab()I
    .locals 3

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    add-int/lit8 v0, v1, 0x1

    .local v0, "nextTab":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .end local v0    # "nextTab":I
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "nextTab":I
    goto :goto_0
.end method

.method private initTabWidget()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setFocusable(Z)V

    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    return-void
.end method

.method private setScrollStripOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public addView(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900d8

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "vGroup":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "textView":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "textView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTop()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    .local v1, "strip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .end local v0    # "tabView":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollStripLenChangeable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    return v0
.end method

.method public getScrollStripLenExtensionPx()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    new-instance v2, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BlurLinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setBottomStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setBottomStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setBottomStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setCurrentTabButNotInvalidateScrollStrip(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawScrollStripWhenTabChangeByClick(Z)V
    .locals 0
    .param p1, "drawScrollStripWhenTabChangeByClick"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    return-void
.end method

.method public setScrollStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setScrollStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setScrollStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setScrollStripLenChangeable(Z)V
    .locals 0
    .param p1, "stripLenChangeable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    return-void
.end method

.method public setScrollStripLenExtensionPx(I)V
    .locals 0
    .param p1, "extension"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    return-void
.end method

.method public setScrollStripOffset(IF)V
    .locals 1
    .param p1, "tab"    # I
    .param p2, "offset"    # F

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripOffset(F)V

    goto :goto_0
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method

.method public setTopStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    return-void
.end method
