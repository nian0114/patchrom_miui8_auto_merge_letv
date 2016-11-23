.class public Lcom/letv/leui/widget/LeScrollStripTabWidget;
.super Lcom/letv/leui/widget/BlurLinearLayout;
.source "LeScrollStripTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BlurLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    .line 29
    const/4 v5, -0x1

    iput v5, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 72
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->initTabWidget()V

    .line 74
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060166

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 77
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 78
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 79
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 80
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 78
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 86
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeScrollStripTabWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    .line 21
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeScrollStripTabWidget;)J
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mLastClickTime:J

    return-wide p1
.end method

.method private computeStripBoundsRect()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_dynamicLen()V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect_fixLen()V

    goto :goto_0
.end method

.method private computeStripBoundsRect_dynamicLen()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 246
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 247
    .local v9, "selectedVg":Landroid/view/ViewGroup;
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 249
    .local v6, "selectedText":Landroid/view/View;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getNextTab()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 250
    .local v4, "nextVg":Landroid/view/ViewGroup;
    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, "nextText":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v10

    .line 255
    .local v10, "selectedVgLeft":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v11

    .line 261
    .local v11, "selectedVgRight":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int v7, v12, v10

    .line 262
    .local v7, "selectedTextLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    add-int v8, v12, v10

    .line 264
    .local v8, "selectedTextRight":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v2, v12, v13

    .line 265
    .local v2, "nextTextLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v13

    add-int v3, v12, v13

    .line 267
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

    .line 270
    .local v0, "left":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v12, :cond_0

    if-ge v0, v10, :cond_0

    .line 271
    move v0, v10

    .line 274
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

    .line 277
    .local v5, "right":I
    iget v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_1

    if-le v5, v11, :cond_1

    .line 278
    move v5, v11

    .line 281
    :cond_1
    iget-object v12, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v13

    iget v14, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v14

    invoke-virtual {v12, v0, v13, v5, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 282
    return-void
.end method

.method private computeStripBoundsRect_fixLen()V
    .locals 9

    .prologue
    .line 206
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, "selectedChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 212
    .local v3, "selectedChildLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 213
    .local v4, "selectedChildRight":I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 215
    .local v5, "selectedChildWidth":I
    int-to-float v6, v3

    int-to-float v7, v5

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 216
    .local v0, "left":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-nez v6, :cond_0

    if-ge v0, v3, :cond_0

    .line 217
    move v0, v3

    .line 220
    :cond_0
    add-int v1, v0, v5

    .line 221
    .local v1, "right":I
    iget v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_1

    if-le v1, v4, :cond_1

    .line 222
    move v1, v4

    .line 225
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    return-void
.end method

.method private getNextTab()I
    .locals 3

    .prologue
    .line 230
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 231
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    add-int/lit8 v0, v1, 0x1

    .line 236
    .local v0, "nextTab":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 237
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 239
    return v0

    .line 233
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

    .line 115
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setClickable(Z)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setFocusable(Z)V

    .line 122
    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBlurEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    .line 132
    return-void
.end method

.method private setScrollStripOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 612
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 615
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripOffset:F

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 618
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

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 467
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 470
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 471
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 477
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 479
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->addView(Landroid/view/View;)V

    .line 483
    new-instance v1, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 485
    return-void
.end method

.method public addView(Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 686
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900db

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 689
    .local v2, "vGroup":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 698
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 693
    .local v1, "textView":Landroid/view/View;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 694
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "textView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    :cond_1
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 194
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    if-eqz v2, :cond_0

    .line 290
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

    .line 292
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    if-eqz v2, :cond_1

    .line 297
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

    .line 299
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 318
    :cond_2
    :goto_0
    return-void

    .line 306
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    if-eqz v2, :cond_2

    .line 307
    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 309
    .local v1, "strip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 311
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    if-eqz v2, :cond_4

    .line 312
    invoke-direct {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->computeStripBoundsRect()V

    .line 313
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 315
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 316
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 395
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 396
    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 401
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
    .line 442
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 445
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 448
    if-eq v0, p1, :cond_0

    .line 449
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 451
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 99
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 109
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 104
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 105
    iget p2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    goto :goto_0

    .line 106
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 107
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollStripLenChangeable()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    return v0
.end method

.method public getScrollStripLenExtensionPx()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    return v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 490
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 492
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 494
    new-instance v2, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->onFinishInflate()V

    .line 499
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 509
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 510
    iget v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    if-eqz p2, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .line 517
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 518
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 519
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 521
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 528
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 406
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 407
    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 408
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 409
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 410
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 427
    const-class v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 428
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/BlurLinearLayout;->onSizeChanged(IIII)V

    .line 95
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Lcom/letv/leui/widget/BlurLinearLayout;->removeAllViews()V

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 505
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setBottomStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    return-void
.end method

.method public setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 665
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 667
    return-void
.end method

.method public setBottomStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    .line 671
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 672
    return-void
.end method

.method public setBottomStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mBottomStripHeight:I

    .line 676
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 677
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 338
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 343
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 345
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 346
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 347
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 349
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setCurrentTabButNotInvalidateScrollStrip(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 375
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 380
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 382
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 383
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 384
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 386
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setCurrentTabButNotInvalidateScrollStrip(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "delayTime"    # I

    .prologue
    .line 704
    new-instance v0, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;I)V

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    return-void
.end method

.method public setCurrentTabForce(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 356
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 361
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 363
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    .line 364
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 365
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripMoved:Z

    .line 367
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public setDrawScrollStripWhenTabChangeByClick(Z)V
    .locals 0
    .param p1, "drawScrollStripWhenTabChangeByClick"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mDrawScrollStripWhenTabChangeByClick:Z

    .line 682
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BlurLinearLayout;->setEnabled(Z)V

    .line 457
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    .line 458
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 459
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTabClickListener:Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .line 586
    return-void
.end method

.method public setScrollStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    return-void
.end method

.method public setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 596
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 597
    return-void
.end method

.method public setScrollStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 600
    if-gez p1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    .line 603
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    goto :goto_0
.end method

.method public setScrollStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripHeight:I

    .line 608
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 609
    return-void
.end method

.method public setScrollStripLenChangeable(Z)V
    .locals 0
    .param p1, "stripLenChangeable"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenChangeable:Z

    .line 155
    return-void
.end method

.method public setScrollStripLenExtensionPx(I)V
    .locals 0
    .param p1, "extension"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mScrollStripLenExtension:I

    .line 163
    return-void
.end method

.method public setScrollStripOffset(IF)V
    .locals 1
    .param p1, "tab"    # I
    .param p2, "offset"    # F

    .prologue
    .line 622
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mSelectedTab:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 628
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripOffset(F)V

    goto :goto_0
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 634
    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 639
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 641
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripDrawable:Landroid/graphics/drawable/Drawable;

    .line 642
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 643
    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 647
    iput p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    .line 648
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 649
    return-void
.end method

.method public setTopStripHeightResId(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget;->mTopStripHeight:I

    .line 653
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->invalidate()V

    .line 654
    return-void
.end method
