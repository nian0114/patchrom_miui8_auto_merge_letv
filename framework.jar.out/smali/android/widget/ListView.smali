.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$1;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 129
    iput-boolean v8, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 131
    iput-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 134
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 159
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 163
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 164
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    :cond_0
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 168
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 175
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 180
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_3
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 186
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 188
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 189
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 193
    .end local v2    # "dividerHeight":I
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 194
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 196
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3175
    add-int/lit8 v2, p2, -0x1

    .line 3176
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3177
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3178
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3180
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3184
    add-int/lit8 v2, p2, 0x1

    .line 3185
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3186
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3187
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3189
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 215
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 218
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 221
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 223
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 226
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 228
    :cond_0
    if-gez v2, :cond_1

    .line 230
    const/4 v2, 0x0

    .line 248
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 249
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 252
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 234
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 237
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 240
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 243
    :cond_4
    if-lez v2, :cond_1

    .line 244
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2784
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2785
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2787
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2789
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_6

    .line 2790
    add-int/lit8 v3, v7, -0x1

    .line 2791
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2792
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2794
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 2796
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2797
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2799
    :cond_1
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2800
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2802
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2803
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 2804
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2807
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3

    .line 2809
    const/4 v10, 0x0

    .line 2861
    .end local v1    # "goalBottom":I
    :goto_1
    return v10

    .line 2812
    .restart local v1    # "goalBottom":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2815
    const/4 v10, 0x0

    goto :goto_1

    .line 2818
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2820
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 2822
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2823
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2826
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 2828
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 2829
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 2830
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2832
    :cond_7
    :goto_2
    if-gez v3, :cond_8

    .line 2834
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2835
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2836
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    .line 2838
    :cond_8
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2839
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2840
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2841
    .local v2, "goalTop":I
    if-lez v8, :cond_9

    .line 2842
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2844
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_a

    .line 2846
    const/4 v10, 0x0

    goto :goto_1

    .line 2849
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 2852
    const/4 v10, 0x0

    goto :goto_1

    .line 2855
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2856
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 2858
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2859
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2861
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3053
    const/4 v0, 0x0

    .line 3054
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3055
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3056
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    .line 3057
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3058
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3059
    if-lez p3, :cond_0

    .line 3060
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3072
    :cond_0
    :goto_0
    return v0

    .line 3064
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3065
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 3066
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3067
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3068
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 2951
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2953
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2954
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2955
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2980
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 2981
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2985
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 2986
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2987
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    .line 2990
    :cond_1
    const/4 v14, 0x0

    .line 3012
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 2957
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 2958
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    .line 2959
    .local v12, "topFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    .line 2961
    .local v5, "listTop":I
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2965
    .local v13, "ySearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2977
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 2958
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 2959
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v5    # "listTop":I
    :cond_5
    move v13, v5

    .line 2961
    goto :goto_4

    .line 2967
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    .line 2969
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    .line 2971
    .local v4, "listBottom":I
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2975
    .restart local v13    # "ySearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 2967
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 2969
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v4    # "listBottom":I
    :cond_9
    move v13, v4

    .line 2971
    goto :goto_8

    .line 2994
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2996
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2997
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_b

    .line 2999
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3000
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3001
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3002
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3007
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3008
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3012
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2565
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return v9

    .line 2569
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2570
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2572
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2573
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2576
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2577
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2578
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2579
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2582
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2583
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2584
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2585
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2586
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2587
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2588
    move v5, v4

    .line 2589
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2592
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2593
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2594
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2597
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2598
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2601
    :cond_4
    if-lez v0, :cond_5

    .line 2602
    const/16 v7, 0x21

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2603
    const/4 v3, 0x1

    .line 2608
    :cond_5
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2610
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2611
    .restart local v2    # "focused":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 2612
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2613
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2619
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2621
    const/4 v6, 0x0

    .line 2622
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2626
    iput v10, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2629
    :cond_8
    if-eqz v3, :cond_0

    .line 2630
    if-eqz v6, :cond_9

    .line 2631
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2632
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2634
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2635
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2637
    :cond_a
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2638
    goto/16 :goto_0

    .line 2576
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2582
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 2584
    goto/16 :goto_3

    .line 2602
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 540
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 542
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 543
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 544
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 545
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 546
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2206
    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2353
    :cond_1
    :goto_0
    return v4

    .line 2210
    :cond_2
    iget-boolean v5, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2211
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2214
    :cond_3
    const/4 v2, 0x0

    .line 2215
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2217
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2218
    sparse-switch p1, :sswitch_data_0

    .line 2334
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2338
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2342
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2353
    goto :goto_0

    .line 2220
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2221
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2222
    if-nez v2, :cond_4

    move v1, p2

    .line 2223
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2224
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2225
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2231
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_5
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2232
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    .line 2237
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2238
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2239
    if-nez v2, :cond_4

    move v1, p2

    .line 2240
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2241
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2242
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2248
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2249
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5

    .line 2254
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2255
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto :goto_1

    .line 2260
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2261
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2267
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2268
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2269
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2271
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2272
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2278
    :sswitch_5
    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2279
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2280
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    move v2, v4

    .line 2284
    :cond_d
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_e
    move v2, v3

    .line 2280
    goto :goto_6

    .line 2281
    :cond_f
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2282
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_11
    move v2, v3

    goto :goto_7

    .line 2289
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2290
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_8

    .line 2291
    :cond_14
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2292
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto :goto_9

    .line 2297
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2298
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v2, v3

    goto :goto_a

    .line 2299
    :cond_19
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2300
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_b

    .line 2305
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2306
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_c

    .line 2311
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2312
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_d

    .line 2344
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2347
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2350
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2218
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2342
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    .line 1423
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1424
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    .line 1427
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1430
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1433
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mBottom:I

    iget v8, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1437
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1438
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1439
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1443
    .local v3, "firstTop":I
    if-lez v0, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    .line 1444
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1446
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1449
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1450
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1453
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1455
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1460
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1472
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1475
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1478
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1481
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1484
    .local v6, "start":I
    iget v8, p0, Landroid/widget/ListView;->mBottom:I

    iget v9, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1488
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1489
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1490
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1491
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1495
    .local v5, "lastPosition":I
    if-lez v7, :cond_2

    .line 1496
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 1497
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 1499
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1502
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1503
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    .line 1506
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1508
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1515
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_2
    :goto_0
    return-void

    .line 1510
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_3
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    .line 1511
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3083
    const/4 v0, 0x0

    .line 3084
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3085
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3086
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3087
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    .line 3088
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3092
    :cond_0
    :goto_0
    return v0

    .line 3089
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    .line 3090
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 831
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 832
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 833
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 834
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 835
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 841
    :goto_0
    return-void

    .line 837
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 838
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 839
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v3, 0x1

    .line 713
    const/4 v8, 0x0

    .line 715
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int v7, v0, v1

    .line 716
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 717
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 720
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 722
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 723
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 725
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 726
    if-eqz v5, :cond_1

    .line 727
    move-object v8, v6

    .line 729
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 730
    goto :goto_0

    .line 722
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 732
    :cond_3
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 733
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 799
    sub-int v6, p2, p1

    .line 801
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 803
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 805
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 807
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 808
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_0

    .line 809
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 812
    :cond_0
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 814
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 815
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 820
    :goto_0
    return-object v7

    .line 817
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 855
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 856
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 860
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 862
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 865
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 869
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 872
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 876
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 877
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 880
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 896
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 898
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 899
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 904
    :goto_1
    return-object v10

    .line 881
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    .line 884
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 888
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 889
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 892
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 901
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .prologue
    .line 779
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 780
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 781
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 784
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1375
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1376
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1378
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1383
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1384
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1385
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1387
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1388
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1389
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1390
    .local v8, "childCount":I
    if-lez v8, :cond_0

    .line 1391
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1404
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1409
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1375
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1394
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1396
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1397
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1398
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1399
    .restart local v8    # "childCount":I
    if-lez v8, :cond_0

    .line 1400
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_1

    .line 1406
    :cond_3
    if-eqz v6, :cond_4

    move-object v10, v6

    .line 1407
    goto :goto_2

    :cond_4
    move-object v10, v7

    .line 1409
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 747
    const/4 v8, 0x0

    .line 749
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 750
    .local v7, "end":I
    iget v0, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 751
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 754
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 756
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 757
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 758
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 759
    if-eqz v5, :cond_1

    .line 760
    move-object v8, v6

    .line 762
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 763
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 756
    goto :goto_1

    .line 765
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 766
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 767
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2768
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 917
    move v0, p1

    .line 918
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 919
    sub-int/2addr v0, p2

    .line 921
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 934
    move v0, p1

    .line 935
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 936
    add-int/2addr v0, p2

    .line 938
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    .line 2454
    const/16 v6, 0x11

    if-eq p1, v6, :cond_0

    const/16 v6, 0x42

    if-eq p1, v6, :cond_0

    .line 2455
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2459
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 2460
    .local v4, "numChildren":I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-lez v4, :cond_3

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 2461
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2462
    .local v5, "selectedView":Landroid/view/View;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 2465
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2466
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    check-cast v5, Landroid/view/ViewGroup;

    .end local v5    # "selectedView":Landroid/view/View;
    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2468
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2470
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2471
    .local v1, "focusedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 2472
    invoke-virtual {v0, v1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2473
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2474
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2478
    :goto_0
    invoke-virtual {v3, p1, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2479
    const/4 v6, 0x1

    .line 2493
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    .end local v3    # "nextFocus":Landroid/view/View;
    :goto_1
    return v6

    .line 2476
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v1    # "focusedRect":Landroid/graphics/Rect;
    .restart local v3    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2486
    .end local v1    # "focusedRect":Landroid/graphics/Rect;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2488
    .local v2, "globalNextFocus":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2489
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    goto :goto_1

    .line 2493
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "globalNextFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2659
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2660
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2670
    :cond_0
    const/4 v5, 0x0

    .line 2671
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2672
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2673
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    .line 2674
    move v7, v2

    .line 2675
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2676
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2677
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2678
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2686
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2689
    .local v3, "numChildren":I
    if-eqz v6, :cond_1

    .line 2690
    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2691
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2695
    :cond_1
    if-eqz v0, :cond_2

    .line 2696
    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2697
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2699
    :cond_2
    return-void

    .line 2680
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_3
    move v7, v4

    .line 2681
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2682
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2683
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_0

    .line 2690
    .restart local v3    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2696
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1859
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1860
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1861
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1862
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1875
    :goto_1
    return v5

    .line 1861
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1868
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1869
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1870
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1871
    goto :goto_1

    .line 1869
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1875
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3035
    if-ne p1, p2, :cond_1

    .line 3040
    :cond_0
    :goto_0
    return v1

    .line 3039
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3040
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2898
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2899
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_5

    .line 2900
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2903
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 2938
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 2900
    goto :goto_0

    .line 2906
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2907
    move v5, v1

    .line 2910
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2911
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2912
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2913
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2912
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2919
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2920
    .local v2, "last":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2923
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 2924
    goto :goto_1

    .line 2920
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 2926
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 2927
    move v5, v2

    .line 2930
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2931
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 2932
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2931
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 2938
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1896
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1898
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1899
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1902
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1914
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 1909
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1912
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1914
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2709
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2710
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2711
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2713
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2716
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2717
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 2718
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2721
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2730
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2731
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2736
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2738
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2740
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 2741
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2746
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2747
    return-void

    .line 2743
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .prologue
    .line 1218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1219
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1220
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1221
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1223
    :cond_0
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1224
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1225
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1227
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1229
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1231
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1232
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1236
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1240
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1241
    return-void

    .line 1234
    .end local v0    # "childHeightSpec":I
    :cond_1
    const/4 v4, 0x0

    invoke-static {p4, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 981
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 985
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 987
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 990
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1012
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1015
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1018
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1022
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    .line 1025
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1028
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1031
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1032
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1033
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1036
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1038
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1042
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1043
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1044
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1045
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1126
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v14

    .line 1047
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1048
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1049
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0

    .line 1051
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1072
    if-eqz p2, :cond_4

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1084
    .restart local v14    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    .line 1086
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1089
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1092
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1093
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1094
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1097
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1101
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    .line 1079
    .end local v14    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1104
    .end local v14    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1109
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1112
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    .line 1115
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1116
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    .line 1118
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1123
    .end local v12    # "newBottom":I
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v4, -0x1

    .line 2530
    if-ne p3, v7, :cond_2

    .line 2531
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2532
    .local v1, "listBottom":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_0

    .line 2533
    if-eq p2, v4, :cond_1

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 2551
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 2554
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .line 2533
    .restart local v1    # "listBottom":I
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_0

    .line 2540
    .end local v1    # "listBottom":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2541
    .local v2, "listTop":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 2542
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2543
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_3

    if-gt p2, v0, :cond_3

    add-int/lit8 v3, p2, -0x1

    .line 2546
    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    move v3, v0

    .line 2543
    goto :goto_2

    .line 2554
    .end local v0    # "lastPos":I
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_4
    if-ne p3, v7, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3020
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 3021
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3022
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3023
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3024
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3021
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3027
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2755
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2756
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2757
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2758
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2759
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2760
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2761
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2762
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 339
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 340
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 341
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 342
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 339
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3103
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3105
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3106
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3107
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3109
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 3113
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 3114
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3115
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 3116
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3117
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3118
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3119
    add-int/lit8 v7, v7, 0x1

    .line 3123
    goto :goto_0

    .line 3128
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 3129
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3133
    :cond_1
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3134
    .local v0, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 3135
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3136
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3137
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3139
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3140
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3141
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_1

    .line 3145
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_3
    invoke-virtual {p0, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3148
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3149
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3150
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3155
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 3156
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3159
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3160
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3163
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3164
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3165
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3166
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3168
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3169
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3170
    goto :goto_3

    .line 3172
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1933
    const-wide/16 v20, 0x8

    const-string v19, "setupListItem"

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1935
    if-eqz p6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v11, 0x1

    .line 1936
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_a

    const/16 v17, 0x1

    .line 1937
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 1938
    .local v13, "mode":I
    if-lez v13, :cond_b

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 1940
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    const/16 v16, 0x1

    .line 1941
    .local v16, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_0
    const/4 v14, 0x1

    .line 1945
    .local v14, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1946
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_1

    .line 1947
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1949
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1952
    if-eqz p7, :cond_2

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    :cond_2
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1954
    :cond_3
    if-eqz p4, :cond_e

    const/16 v19, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1963
    :goto_6
    if-eqz v17, :cond_4

    .line 1964
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1967
    :cond_4
    if-eqz v16, :cond_5

    .line 1968
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1971
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1972
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    .line 1973
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1980
    :cond_6
    :goto_7
    if-eqz v14, :cond_14

    .line 1981
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1983
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1985
    .local v12, "lpHeight":I
    if-lez v12, :cond_13

    .line 1986
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1991
    .local v5, "childHeightSpec":I
    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1996
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1997
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1998
    .local v9, "h":I
    if-eqz p4, :cond_15

    move/from16 v7, p3

    .line 2000
    .local v7, "childTop":I
    :goto_a
    if-eqz v14, :cond_16

    .line 2001
    add-int v6, p5, v18

    .line 2002
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 2003
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 2009
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_7

    .line 2010
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2013
    :cond_7
    if-eqz p7, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 2015
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2018
    :cond_8
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 2019
    return-void

    .line 1935
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1936
    .restart local v11    # "isSelected":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1938
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1940
    .restart local v10    # "isPressed":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1941
    .restart local v16    # "updateChildPressed":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1954
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1956
    :cond_f
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1957
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 1958
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1960
    :cond_10
    if-eqz p4, :cond_11

    const/16 v19, -0x1

    :goto_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_11
    const/16 v19, 0x0

    goto :goto_c

    .line 1974
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_7

    .line 1988
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_8

    .line 1993
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_14
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    .line 1998
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_15
    sub-int v7, p3, v9

    goto/16 :goto_a

    .line 2005
    .restart local v7    # "childTop":I
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2006
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_b
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 3988
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3989
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 3990
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 3991
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_5

    const/4 v6, 0x1

    .line 3992
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    .line 3993
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    .line 3995
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_13

    .line 3996
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v22

    if-nez v22, :cond_8

    const/4 v7, 0x1

    .line 3997
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v16, v0

    .line 3998
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3999
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 4000
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    const/4 v14, 0x1

    .line 4001
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_a

    const/4 v13, 0x1

    .line 4002
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4003
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4004
    .local v8, "footerDividers":Z
    if-nez v11, :cond_0

    if-nez v14, :cond_13

    :cond_0
    if-nez v8, :cond_1

    if-nez v13, :cond_13

    .line 4005
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4006
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 4007
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 4008
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_2

    if-nez v15, :cond_13

    .line 4009
    :cond_2
    add-int/lit8 v17, p1, 0x1

    .line 4013
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v11, :cond_3

    if-nez v14, :cond_c

    move/from16 v0, v17

    if-lt v0, v10, :cond_c

    :cond_3
    if-nez v15, :cond_4

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v8, :cond_4

    if-nez v13, :cond_c

    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 4017
    :cond_4
    const/16 v22, 0x1

    .line 4043
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v15    # "isLastItem":Z
    .end local v16    # "itemCount":I
    .end local v17    # "nextIndex":I
    :goto_7
    return v22

    .line 3991
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3992
    .restart local v6    # "drawOverscrollHeader":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3993
    .restart local v5    # "drawOverscrollFooter":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3996
    .restart local v4    # "drawDividers":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 4000
    .restart local v7    # "fillForMissingDividers":Z
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 4001
    .restart local v14    # "isHeader":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 4007
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    .restart local v13    # "isFooter":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 4018
    .restart local v15    # "isLastItem":Z
    .restart local v17    # "nextIndex":I
    :cond_c
    if-eqz v7, :cond_13

    .line 4019
    const/16 v22, 0x1

    goto :goto_7

    .line 4023
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    if-eqz v6, :cond_10

    const/16 v21, 0x1

    .line 4024
    .local v21, "start":I
    :goto_8
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 4025
    .local v12, "isFirstItem":Z
    :goto_9
    if-nez v12, :cond_13

    .line 4026
    add-int/lit8 v20, p1, -0x1

    .line 4030
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v11, :cond_e

    if-nez v14, :cond_12

    move/from16 v0, v20

    if-lt v0, v10, :cond_12

    :cond_e
    if-nez v12, :cond_f

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v8, :cond_f

    if-nez v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v9, :cond_12

    .line 4034
    :cond_f
    const/16 v22, 0x1

    goto :goto_7

    .line 4023
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    .line 4024
    .restart local v21    # "start":I
    :cond_11
    const/4 v12, 0x0

    goto :goto_9

    .line 4035
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_12
    if-eqz v7, :cond_13

    .line 4036
    const/16 v22, 0x1

    goto :goto_7

    .line 4043
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v12    # "isFirstItem":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_13
    const/16 v22, 0x0

    goto :goto_7
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 565
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 566
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 568
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 570
    .local v3, "listBottom":I
    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 556
    iget v2, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 557
    .local v0, "listTop":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 402
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 365
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 366
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 367
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 368
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 369
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 373
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 380
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 384
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 308
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 271
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 272
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 273
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 274
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 275
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 279
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 286
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 290
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3681
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3658
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2505
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2506
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2507
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2508
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2512
    :cond_0
    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2023
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 53
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3283
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mCachingStarted:Z

    move/from16 v51, v0

    if-eqz v51, :cond_0

    .line 3284
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mCachingActive:Z

    .line 3288
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3289
    .local v13, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v41, v0

    .line 3290
    .local v41, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v40, v0

    .line 3291
    .local v40, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v41, :cond_10

    const/16 v17, 0x1

    .line 3292
    .local v17, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v40, :cond_11

    const/16 v16, 0x1

    .line 3293
    .local v16, "drawOverscrollFooter":Z
    :goto_1
    if-lez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v51, v0

    if-eqz v51, :cond_12

    const/4 v15, 0x1

    .line 3295
    .local v15, "drawDividers":Z
    :goto_2
    if-nez v15, :cond_1

    if-nez v17, :cond_1

    if-eqz v16, :cond_1b

    .line 3297
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3298
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3302
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 3303
    .local v35, "leftbounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3304
    new-instance v45, Landroid/graphics/Rect;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/Rect;-><init>()V

    .line 3305
    .local v45, "rightBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3308
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3309
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 3310
    .local v25, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v32, v0

    .line 3311
    .local v32, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v51

    sub-int v24, v32, v51

    .line 3312
    .local v24, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v26, v0

    .line 3313
    .local v26, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v23, v0

    .line 3314
    .local v23, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v22, v0

    .line 3315
    .local v22, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3316
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3321
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v51

    if-eqz v51, :cond_13

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v51

    if-nez v51, :cond_13

    const/16 v21, 0x1

    .line 3323
    .local v21, "fillForMissingDividers":Z
    :goto_3
    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    if-nez v51, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v51, v0

    if-eqz v51, :cond_2

    .line 3324
    new-instance v51, Landroid/graphics/Paint;

    invoke-direct/range {v51 .. v51}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->setColor(I)V

    .line 3327
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v43, v0

    .line 3330
    .local v43, "paint":Landroid/graphics/Paint;
    new-instance v42, Landroid/graphics/Paint;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/Paint;-><init>()V

    .line 3333
    .local v42, "paddingPaint":Landroid/graphics/Paint;
    const/16 v20, 0x0

    .line 3334
    .local v20, "effectivePaddingTop":I
    const/16 v19, 0x0

    .line 3335
    .local v19, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mGroupFlags:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0x22

    const/16 v52, 0x22

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_3

    .line 3336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 3341
    :cond_3
    const/4 v12, 0x0

    .line 3342
    .local v12, "dividerFilter":Lcom/letv/leui/widget/DividerFilter;
    instance-of v0, v4, Landroid/widget/HeaderViewListAdapter;

    move/from16 v51, v0

    if-eqz v51, :cond_14

    move-object/from16 v51, v4

    .line 3343
    check-cast v51, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual/range {v51 .. v51}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v36

    .line 3344
    .local v36, "listAdapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, v36

    instance-of v0, v0, Lcom/letv/leui/widget/DividerFilter;

    move/from16 v51, v0

    if-eqz v51, :cond_4

    move-object/from16 v12, v36

    .line 3345
    check-cast v12, Lcom/letv/leui/widget/DividerFilter;

    .line 3353
    .end local v36    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_4
    :goto_4
    const/16 v34, 0x0

    .line 3354
    .local v34, "leftDividerMargin":I
    const/16 v46, 0x0

    .line 3356
    .local v46, "rightDividerMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v52, v0

    add-int v37, v51, v52

    .line 3357
    .local v37, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v51, v0

    if-nez v51, :cond_1c

    .line 3358
    const/4 v6, 0x0

    .line 3360
    .local v6, "bottom":I
    const/16 v18, 0x0

    .line 3361
    .local v18, "drawTop":Z
    if-eqz v12, :cond_5

    .line 3362
    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->topDividerEnabled()Z

    move-result v18

    .line 3363
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->leftDividerMargin(I)I

    move-result v34

    .line 3364
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->rightDividerMargin(I)I

    move-result v46

    .line 3368
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v47, v0

    .line 3370
    .local v47, "scrollY":I
    if-lez v11, :cond_6

    if-gtz v47, :cond_6

    .line 3371
    if-eqz v17, :cond_15

    .line 3372
    const/16 v51, 0x0

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3373
    move/from16 v0, v47

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3387
    :cond_6
    :goto_5
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_6
    move/from16 v0, v27

    if-ge v0, v11, :cond_1a

    .line 3388
    add-int v33, v22, v27

    .line 3389
    .local v33, "itemIndex":I
    move/from16 v0, v33

    move/from16 v1, v25

    if-ge v0, v1, :cond_16

    const/16 v30, 0x1

    .line 3390
    .local v30, "isHeader":Z
    :goto_7
    move/from16 v0, v33

    move/from16 v1, v24

    if-lt v0, v1, :cond_17

    const/16 v29, 0x1

    .line 3391
    .local v29, "isFooter":Z
    :goto_8
    if-nez v26, :cond_7

    if-nez v30, :cond_f

    :cond_7
    if-nez v23, :cond_8

    if-nez v29, :cond_f

    .line 3392
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3393
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3394
    add-int/lit8 v51, v11, -0x1

    move/from16 v0, v27

    move/from16 v1, v51

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 3396
    .local v31, "isLastItem":Z
    :goto_9
    const/16 v49, 0x1

    .line 3397
    .local v49, "toDraw":Z
    if-eqz v12, :cond_9

    .line 3398
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->dividerEnabled(I)Z

    move-result v49

    .line 3399
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->leftDividerMargin(I)I

    move-result v34

    .line 3400
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->rightDividerMargin(I)I

    move-result v46

    .line 3403
    :cond_9
    if-eqz v15, :cond_d

    if-eqz v49, :cond_d

    move/from16 v0, v37

    if-ge v6, v0, :cond_d

    if-eqz v16, :cond_a

    if-nez v31, :cond_d

    .line 3405
    :cond_a
    add-int/lit8 v38, v33, 0x1

    .line 3409
    .local v38, "nextIndex":I
    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v51

    if-eqz v51, :cond_19

    if-nez v26, :cond_b

    if-nez v30, :cond_19

    move/from16 v0, v38

    move/from16 v1, v25

    if-lt v0, v1, :cond_19

    :cond_b
    if-nez v31, :cond_c

    move/from16 v0, v38

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v51

    if-eqz v51, :cond_19

    if-nez v23, :cond_c

    if-nez v29, :cond_19

    move/from16 v0, v38

    move/from16 v1, v24

    if-ge v0, v1, :cond_19

    .line 3413
    :cond_c
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3414
    add-int v51, v6, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3415
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3416
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3425
    .end local v38    # "nextIndex":I
    :cond_d
    :goto_a
    if-eqz v12, :cond_e

    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->forceDrawDivider(I)Z

    move-result v51

    if-eqz v51, :cond_e

    .line 3426
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3427
    add-int v51, v6, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3428
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3429
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3434
    :cond_e
    if-eqz v12, :cond_f

    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->dividerPaddingColor()I

    move-result v51

    if-eqz v51, :cond_f

    .line 3435
    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->dividerPaddingColor()I

    move-result v51

    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3436
    move-object/from16 v0, v35

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 3437
    add-int v51, v6, v13

    move/from16 v0, v51

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3438
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3439
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3440
    move-object/from16 v0, v45

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 3441
    add-int v51, v6, v13

    move/from16 v0, v51

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3442
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3443
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3387
    .end local v8    # "child":Landroid/view/View;
    .end local v31    # "isLastItem":Z
    .end local v49    # "toDraw":Z
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    .line 3291
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "dividerFilter":Lcom/letv/leui/widget/DividerFilter;
    .end local v15    # "drawDividers":Z
    .end local v16    # "drawOverscrollFooter":Z
    .end local v17    # "drawOverscrollHeader":Z
    .end local v18    # "drawTop":Z
    .end local v19    # "effectivePaddingBottom":I
    .end local v20    # "effectivePaddingTop":I
    .end local v21    # "fillForMissingDividers":Z
    .end local v22    # "first":I
    .end local v23    # "footerDividers":Z
    .end local v24    # "footerLimit":I
    .end local v25    # "headerCount":I
    .end local v26    # "headerDividers":Z
    .end local v27    # "i":I
    .end local v29    # "isFooter":Z
    .end local v30    # "isHeader":Z
    .end local v32    # "itemCount":I
    .end local v33    # "itemIndex":I
    .end local v34    # "leftDividerMargin":I
    .end local v35    # "leftbounds":Landroid/graphics/Rect;
    .end local v37    # "listBottom":I
    .end local v42    # "paddingPaint":Landroid/graphics/Paint;
    .end local v43    # "paint":Landroid/graphics/Paint;
    .end local v45    # "rightBounds":Landroid/graphics/Rect;
    .end local v46    # "rightDividerMargin":I
    .end local v47    # "scrollY":I
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 3292
    .restart local v17    # "drawOverscrollHeader":Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 3293
    .restart local v16    # "drawOverscrollFooter":Z
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 3321
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v11    # "count":I
    .restart local v15    # "drawDividers":Z
    .restart local v22    # "first":I
    .restart local v23    # "footerDividers":Z
    .restart local v24    # "footerLimit":I
    .restart local v25    # "headerCount":I
    .restart local v26    # "headerDividers":Z
    .restart local v32    # "itemCount":I
    .restart local v35    # "leftbounds":Landroid/graphics/Rect;
    .restart local v45    # "rightBounds":Landroid/graphics/Rect;
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 3348
    .restart local v12    # "dividerFilter":Lcom/letv/leui/widget/DividerFilter;
    .restart local v19    # "effectivePaddingBottom":I
    .restart local v20    # "effectivePaddingTop":I
    .restart local v21    # "fillForMissingDividers":Z
    .restart local v42    # "paddingPaint":Landroid/graphics/Paint;
    .restart local v43    # "paint":Landroid/graphics/Paint;
    :cond_14
    instance-of v0, v4, Lcom/letv/leui/widget/DividerFilter;

    move/from16 v51, v0

    if-eqz v51, :cond_4

    move-object v12, v4

    .line 3349
    check-cast v12, Lcom/letv/leui/widget/DividerFilter;

    goto/16 :goto_4

    .line 3375
    .restart local v6    # "bottom":I
    .restart local v18    # "drawTop":Z
    .restart local v34    # "leftDividerMargin":I
    .restart local v37    # "listBottom":I
    .restart local v46    # "rightDividerMargin":I
    .restart local v47    # "scrollY":I
    :cond_15
    if-eqz v15, :cond_6

    if-eqz v18, :cond_6

    .line 3376
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3377
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3379
    .local v10, "childTop":I
    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 3380
    sub-int v51, v10, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3381
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3382
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3383
    const/16 v51, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_5

    .line 3389
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .restart local v27    # "i":I
    .restart local v33    # "itemIndex":I
    :cond_16
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 3390
    .restart local v30    # "isHeader":Z
    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 3394
    .restart local v8    # "child":Landroid/view/View;
    .restart local v29    # "isFooter":Z
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 3418
    .restart local v31    # "isLastItem":Z
    .restart local v38    # "nextIndex":I
    .restart local v49    # "toDraw":Z
    :cond_19
    if-eqz v21, :cond_d

    .line 3419
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3420
    add-int v51, v6, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3421
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 3449
    .end local v8    # "child":Landroid/view/View;
    .end local v29    # "isFooter":Z
    .end local v30    # "isHeader":Z
    .end local v31    # "isLastItem":Z
    .end local v33    # "itemIndex":I
    .end local v38    # "nextIndex":I
    .end local v49    # "toDraw":Z
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mBottom:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v52, v0

    add-int v39, v51, v52

    .line 3450
    .local v39, "overFooterBottom":I
    if-eqz v16, :cond_1b

    add-int v51, v22, v11

    move/from16 v0, v51

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    move/from16 v0, v39

    if-le v0, v6, :cond_1b

    .line 3452
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3453
    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3454
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3558
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "dividerFilter":Lcom/letv/leui/widget/DividerFilter;
    .end local v18    # "drawTop":Z
    .end local v19    # "effectivePaddingBottom":I
    .end local v20    # "effectivePaddingTop":I
    .end local v21    # "fillForMissingDividers":Z
    .end local v22    # "first":I
    .end local v23    # "footerDividers":Z
    .end local v24    # "footerLimit":I
    .end local v25    # "headerCount":I
    .end local v26    # "headerDividers":Z
    .end local v27    # "i":I
    .end local v32    # "itemCount":I
    .end local v34    # "leftDividerMargin":I
    .end local v35    # "leftbounds":Landroid/graphics/Rect;
    .end local v37    # "listBottom":I
    .end local v39    # "overFooterBottom":I
    .end local v42    # "paddingPaint":Landroid/graphics/Paint;
    .end local v43    # "paint":Landroid/graphics/Paint;
    .end local v45    # "rightBounds":Landroid/graphics/Rect;
    .end local v46    # "rightDividerMargin":I
    .end local v47    # "scrollY":I
    :cond_1b
    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3559
    return-void

    .line 3459
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v11    # "count":I
    .restart local v12    # "dividerFilter":Lcom/letv/leui/widget/DividerFilter;
    .restart local v19    # "effectivePaddingBottom":I
    .restart local v20    # "effectivePaddingTop":I
    .restart local v21    # "fillForMissingDividers":Z
    .restart local v22    # "first":I
    .restart local v23    # "footerDividers":Z
    .restart local v24    # "footerLimit":I
    .restart local v25    # "headerCount":I
    .restart local v26    # "headerDividers":Z
    .restart local v32    # "itemCount":I
    .restart local v34    # "leftDividerMargin":I
    .restart local v35    # "leftbounds":Landroid/graphics/Rect;
    .restart local v37    # "listBottom":I
    .restart local v42    # "paddingPaint":Landroid/graphics/Paint;
    .restart local v43    # "paint":Landroid/graphics/Paint;
    .restart local v45    # "rightBounds":Landroid/graphics/Rect;
    .restart local v46    # "rightDividerMargin":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mScrollY:I

    move/from16 v47, v0

    .line 3461
    .restart local v47    # "scrollY":I
    if-lez v11, :cond_1d

    if-eqz v17, :cond_1d

    .line 3462
    move/from16 v0, v47

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3463
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getTop()I

    move-result v51

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3467
    :cond_1d
    if-eqz v17, :cond_26

    const/16 v48, 0x1

    .line 3468
    .local v48, "start":I
    :goto_c
    move/from16 v27, v48

    .restart local v27    # "i":I
    :goto_d
    move/from16 v0, v27

    if-ge v0, v11, :cond_2b

    .line 3469
    add-int v33, v22, v27

    .line 3470
    .restart local v33    # "itemIndex":I
    move/from16 v0, v33

    move/from16 v1, v25

    if-ge v0, v1, :cond_27

    const/16 v30, 0x1

    .line 3471
    .restart local v30    # "isHeader":Z
    :goto_e
    move/from16 v0, v33

    move/from16 v1, v24

    if-lt v0, v1, :cond_28

    const/16 v29, 0x1

    .line 3472
    .restart local v29    # "isFooter":Z
    :goto_f
    if-nez v26, :cond_1e

    if-nez v30, :cond_25

    :cond_1e
    if-nez v23, :cond_1f

    if-nez v29, :cond_25

    .line 3473
    :cond_1f
    const/16 v49, 0x1

    .line 3474
    .restart local v49    # "toDraw":Z
    if-eqz v12, :cond_20

    .line 3475
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->dividerEnabled(I)Z

    move-result v49

    .line 3476
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->leftDividerMargin(I)I

    move-result v34

    .line 3477
    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->rightDividerMargin(I)I

    move-result v46

    .line 3479
    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3480
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v50

    .line 3481
    .local v50, "top":I
    if-eqz v15, :cond_23

    if-eqz v49, :cond_23

    move/from16 v0, v50

    move/from16 v1, v20

    if-le v0, v1, :cond_23

    .line 3482
    move/from16 v0, v27

    move/from16 v1, v48

    if-ne v0, v1, :cond_29

    const/16 v28, 0x1

    .line 3483
    .local v28, "isFirstItem":Z
    :goto_10
    add-int/lit8 v44, v33, -0x1

    .line 3487
    .local v44, "previousIndex":I
    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v51

    if-eqz v51, :cond_2a

    if-nez v26, :cond_21

    if-nez v30, :cond_2a

    move/from16 v0, v44

    move/from16 v1, v25

    if-lt v0, v1, :cond_2a

    :cond_21
    if-nez v28, :cond_22

    move/from16 v0, v44

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v51

    if-eqz v51, :cond_2a

    if-nez v23, :cond_22

    if-nez v29, :cond_2a

    move/from16 v0, v44

    move/from16 v1, v24

    if-ge v0, v1, :cond_2a

    .line 3491
    :cond_22
    sub-int v51, v50, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3492
    move/from16 v0, v50

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3493
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3494
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3499
    add-int/lit8 v51, v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3507
    .end local v28    # "isFirstItem":Z
    .end local v44    # "previousIndex":I
    :cond_23
    :goto_11
    if-eqz v12, :cond_24

    move/from16 v0, v33

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->forceDrawDivider(I)Z

    move-result v51

    if-eqz v51, :cond_24

    .line 3508
    sub-int v51, v50, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3509
    move/from16 v0, v50

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3510
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3511
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3512
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3515
    :cond_24
    if-eqz v12, :cond_25

    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->dividerPaddingColor()I

    move-result v51

    if-eqz v51, :cond_25

    .line 3516
    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->dividerPaddingColor()I

    move-result v51

    move-object/from16 v0, v42

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3517
    sub-int v51, v50, v13

    move/from16 v0, v51

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3518
    move/from16 v0, v50

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    move-object/from16 v1, v35

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3520
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3521
    sub-int v51, v50, v13

    move/from16 v0, v51

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3522
    move/from16 v0, v50

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3523
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    move-object/from16 v1, v45

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3524
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3468
    .end local v8    # "child":Landroid/view/View;
    .end local v49    # "toDraw":Z
    .end local v50    # "top":I
    :cond_25
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_d

    .line 3467
    .end local v27    # "i":I
    .end local v29    # "isFooter":Z
    .end local v30    # "isHeader":Z
    .end local v33    # "itemIndex":I
    .end local v48    # "start":I
    :cond_26
    const/16 v48, 0x0

    goto/16 :goto_c

    .line 3470
    .restart local v27    # "i":I
    .restart local v33    # "itemIndex":I
    .restart local v48    # "start":I
    :cond_27
    const/16 v30, 0x0

    goto/16 :goto_e

    .line 3471
    .restart local v30    # "isHeader":Z
    :cond_28
    const/16 v29, 0x0

    goto/16 :goto_f

    .line 3482
    .restart local v8    # "child":Landroid/view/View;
    .restart local v29    # "isFooter":Z
    .restart local v49    # "toDraw":Z
    .restart local v50    # "top":I
    :cond_29
    const/16 v28, 0x0

    goto/16 :goto_10

    .line 3500
    .restart local v28    # "isFirstItem":Z
    .restart local v44    # "previousIndex":I
    :cond_2a
    if-eqz v21, :cond_23

    .line 3501
    sub-int v51, v50, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3502
    move/from16 v0, v50

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3503
    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 3530
    .end local v8    # "child":Landroid/view/View;
    .end local v28    # "isFirstItem":Z
    .end local v29    # "isFooter":Z
    .end local v30    # "isHeader":Z
    .end local v33    # "itemIndex":I
    .end local v44    # "previousIndex":I
    .end local v49    # "toDraw":Z
    .end local v50    # "top":I
    :cond_2b
    const/4 v14, 0x0

    .line 3531
    .local v14, "drawBottom":Z
    if-eqz v12, :cond_2c

    .line 3532
    invoke-interface {v12}, Lcom/letv/leui/widget/DividerFilter;->bottomDividerEnabled()Z

    move-result v14

    .line 3533
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->leftDividerMargin(I)I

    move-result v34

    .line 3534
    const/16 v51, -0x1

    move/from16 v0, v51

    invoke-interface {v12, v0}, Lcom/letv/leui/widget/DividerFilter;->rightDividerMargin(I)I

    move-result v46

    .line 3537
    :cond_2c
    if-lez v11, :cond_1b

    if-ltz v47, :cond_1b

    .line 3538
    if-eqz v16, :cond_2d

    .line 3539
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3540
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3541
    add-int v51, v3, v47

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_b

    .line 3543
    .end local v3    # "absListBottom":I
    :cond_2d
    if-eqz v15, :cond_1b

    if-eqz v14, :cond_1b

    .line 3544
    add-int/lit8 v51, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3545
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 3547
    .local v9, "childBottom":I
    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 3548
    add-int v51, v9, v13

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3549
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingLeft:I

    move/from16 v51, v0

    add-int v51, v51, v34

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3550
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mRight:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mLeft:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mPaddingRight:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    sub-int v51, v51, v46

    move/from16 v0, v51

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3551
    const/16 v51, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v51

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2177
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2178
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2180
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2181
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2184
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2187
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3563
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3564
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3565
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3567
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3581
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3583
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3584
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3585
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3265
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3267
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3268
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3270
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3271
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3272
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3275
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3276
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3278
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3279
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3248
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3250
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3251
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3253
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3254
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3255
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3258
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3259
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3262
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 4106
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4108
    const-string v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4109
    return-void
.end method

.method fillGap(Z)V
    .locals 9
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 659
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 660
    .local v0, "count":I
    if-eqz p1, :cond_5

    .line 661
    const/4 v3, 0x0

    .line 662
    .local v3, "paddingTop":I
    iget v7, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 663
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v3

    .line 665
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v4, v7, v8

    .line 667
    .local v4, "startOffset":I
    :goto_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v0

    invoke-direct {p0, v7, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 669
    const/4 v1, 0x0

    .line 670
    .local v1, "isEnter":Z
    iget-boolean v7, p0, Landroid/widget/ListView;->mLeOverScrollEnable:Z

    if-eqz v7, :cond_4

    .line 671
    invoke-virtual {p0}, Landroid/widget/ListView;->canOverScroll()Z

    move-result v7

    if-nez v7, :cond_3

    move v1, v5

    .line 675
    :goto_1
    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 699
    .end local v3    # "paddingTop":I
    :cond_1
    :goto_2
    return-void

    .end local v1    # "isEnter":Z
    .end local v4    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v4, v3

    .line 665
    goto :goto_0

    .restart local v1    # "isEnter":Z
    .restart local v4    # "startOffset":I
    :cond_3
    move v1, v6

    .line 671
    goto :goto_1

    .line 673
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 680
    .end local v1    # "isEnter":Z
    .end local v3    # "paddingTop":I
    .end local v4    # "startOffset":I
    :cond_5
    const/4 v2, 0x0

    .line 681
    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_6

    .line 682
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 684
    :cond_6
    if-lez v0, :cond_7

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v4, v7, v8

    .line 686
    .restart local v4    # "startOffset":I
    :goto_3
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 688
    const/4 v1, 0x0

    .line 689
    .restart local v1    # "isEnter":Z
    iget-boolean v7, p0, Landroid/widget/ListView;->mLeOverScrollEnable:Z

    if-eqz v7, :cond_9

    .line 690
    invoke-virtual {p0}, Landroid/widget/ListView;->canOverScroll()Z

    move-result v7

    if-nez v7, :cond_8

    move v1, v5

    .line 694
    :goto_4
    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_2

    .line 684
    .end local v1    # "isEnter":Z
    .end local v4    # "startOffset":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    sub-int v4, v7, v2

    goto :goto_3

    .restart local v1    # "isEnter":Z
    .restart local v4    # "startOffset":I
    :cond_8
    move v1, v6

    .line 690
    goto :goto_4

    .line 692
    :cond_9
    const/4 v1, 0x1

    goto :goto_4
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1343
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1344
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1346
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1347
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1348
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1360
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1345
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1353
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1354
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1355
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1352
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1360
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3914
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3915
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3918
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3919
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3921
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3922
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3924
    if-eqz v2, :cond_0

    .line 3930
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3918
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3930
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3892
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3893
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3894
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3895
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3904
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3899
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3900
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3901
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3904
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3819
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3820
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3823
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3824
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3826
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3827
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3829
    if-eqz v2, :cond_0

    .line 3835
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3823
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3835
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3800
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3801
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3802
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3803
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3811
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3806
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3807
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3808
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3811
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3865
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3866
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3869
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3870
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3872
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3873
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3875
    if-eqz v2, :cond_0

    .line 3881
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3869
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3881
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3845
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3846
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3847
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3848
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3857
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3852
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3853
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3854
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3857
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2413
    const/4 v1, 0x0

    .line 2414
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    .line 2415
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2416
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2417
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2418
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2419
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2420
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2422
    :cond_0
    const/4 v1, 0x1

    .line 2438
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2439
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2440
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2443
    :cond_2
    return v1

    .line 2424
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    .line 2425
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2426
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2427
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2429
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2430
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2431
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2432
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2434
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4048
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3945
    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3946
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3975
    :cond_0
    :goto_0
    return-object v5

    .line 3951
    :cond_1
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3952
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3953
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3954
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3955
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3957
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3958
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3959
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3960
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3958
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 3966
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3969
    new-array v6, v2, [J

    .line 3970
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object v5, v6

    .line 3972
    goto :goto_0

    .line 3975
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3595
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3623
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3980
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 3981
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3982
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 3984
    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3210
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 204
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3701
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3215
    iget-boolean v5, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3217
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3219
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3220
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3221
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_6

    :cond_2
    move v4, v6

    .line 3231
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3215
    goto :goto_0

    .line 3219
    .restart local v4    # "retValue":Z
    :cond_5
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    goto :goto_1

    .line 3224
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_3
    sub-int v2, v7, v5

    .line 3226
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3227
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_3

    :cond_7
    move v4, v6

    .line 3228
    goto :goto_2

    .line 3224
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_8
    iget v5, p0, Landroid/widget/ListView;->mPaddingBottom:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 1519
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1520
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_1

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1528
    const/16 v33, 0x0

    .line 1529
    .local v33, "restoreOffset":I
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mLeOverScrollEnable:Z

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldRestoreOverScroll()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1530
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mCurrentOverScrollDistance:I

    neg-int v0, v4

    move/from16 v33, v0

    .line 1533
    :cond_2
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1537
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_3

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1539
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    if-nez v13, :cond_0

    .line 1849
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1543
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1544
    .local v8, "childrenTop":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mTop:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v9, v4, v38

    .line 1545
    .local v9, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v15

    .line 1547
    .local v15, "childCount":I
    const/16 v27, 0x0

    .line 1548
    .local v27, "index":I
    const/4 v7, 0x0

    .line 1551
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1552
    .local v5, "oldSel":Landroid/view/View;
    const/16 v29, 0x0

    .line 1553
    .local v29, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1556
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 1571
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    .line 1572
    if-ltz v27, :cond_4

    move/from16 v0, v27

    if-ge v0, v15, :cond_4

    .line 1573
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1577
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1579
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_5

    .line 1580
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move/from16 v38, v0

    sub-int v7, v4, v38

    .line 1584
    :cond_5
    add-int v4, v27, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1588
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 1589
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_7

    .line 1590
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1595
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-nez v4, :cond_8

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1848
    if-nez v13, :cond_0

    .line 1849
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1558
    .end local v16    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v27, v4, v38

    .line 1559
    if-ltz v27, :cond_6

    move/from16 v0, v27

    if-ge v0, v15, :cond_6

    .line 1560
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1599
    .restart local v16    # "dataChanged":Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/widget/ListAdapter;->getCount()I

    move-result v38

    move/from16 v0, v38

    if-eq v4, v0, :cond_a

    .line 1600
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") with Adapter("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ")]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1848
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v7    # "delta":I
    .end local v8    # "childrenTop":I
    .end local v9    # "childrenBottom":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v27    # "index":I
    .end local v29    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v13, :cond_9

    .line 1849
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_9
    throw v4

    .line 1608
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .restart local v7    # "delta":I
    .restart local v8    # "childrenTop":I
    .restart local v9    # "childrenBottom":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v27    # "index":I
    .restart local v29    # "oldFirst":Landroid/view/View;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1610
    const/4 v10, 0x0

    .line 1611
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1612
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1617
    .local v12, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v36

    .line 1618
    .local v36, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v36, :cond_d

    .line 1619
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v19

    .line 1620
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_d

    .line 1621
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1622
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_d

    .line 1623
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_c

    .line 1627
    :cond_b
    move-object/from16 v11, v19

    .line 1628
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1634
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1639
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_d
    const/16 v20, 0x0

    .line 1640
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    .line 1645
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 1646
    .local v24, "focusedChild":Landroid/view/View;
    if-eqz v24, :cond_10

    .line 1652
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_f

    .line 1654
    :cond_e
    move-object/from16 v20, v24

    .line 1656
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v21

    .line 1657
    if-eqz v21, :cond_f

    .line 1659
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1662
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1667
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1668
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v32, v0

    .line 1669
    .local v32, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v16, :cond_11

    .line 1670
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v25

    if-ge v0, v15, :cond_12

    .line 1671
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v38, v17, v25

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1670
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1674
    .end local v25    # "i":I
    :cond_11
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1678
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1679
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1681
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 1708
    if-nez v15, :cond_1e

    .line 1709
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v4, :cond_1d

    .line 1710
    const/4 v4, 0x0

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1711
    .local v30, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1712
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v35

    .line 1733
    .end local v8    # "childrenTop":I
    .end local v30    # "position":I
    .local v35, "sel":Landroid/view/View;
    :goto_3
    invoke-virtual/range {v32 .. v32}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1735
    if-eqz v35, :cond_26

    .line 1738
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_25

    .line 1739
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_13

    if-eqz v21, :cond_13

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_14
    const/16 v22, 0x1

    .line 1742
    .local v22, "focusWasTaken":Z
    :goto_4
    if-nez v22, :cond_24

    .line 1746
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    .line 1747
    .local v23, "focused":Landroid/view/View;
    if-eqz v23, :cond_15

    .line 1748
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    .line 1750
    :cond_15
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1758
    .end local v22    # "focusWasTaken":Z
    .end local v23    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1790
    :cond_16
    :goto_6
    if-eqz v36, :cond_17

    .line 1791
    invoke-virtual/range {v36 .. v36}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v28

    .line 1792
    .local v28, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v28, :cond_17

    .line 1793
    if-eqz v11, :cond_2d

    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1795
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v31

    .line 1797
    .local v31, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_2c

    if-eqz v31, :cond_2c

    .line 1798
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v37

    .line 1800
    .local v37, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v38, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1820
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v37    # "virtualViewId":I
    :cond_17
    :goto_7
    if-eqz v21, :cond_18

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1822
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1825
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mLayoutMode:I

    .line 1826
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mDataChanged:Z

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_19

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1829
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1831
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mNeedSync:Z

    .line 1832
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1836
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    if-lez v4, :cond_1a

    .line 1837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1841
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ListView;->mLeOverScrollEnable:Z

    if-eqz v4, :cond_1b

    .line 1842
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->restoreOverScroll(I)V

    .line 1846
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1848
    if-nez v13, :cond_0

    .line 1849
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1683
    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :pswitch_2
    if-eqz v6, :cond_1c

    .line 1684
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1686
    .end local v35    # "sel":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v35

    .line 1688
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1690
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .line 1691
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1693
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v35

    .line 1694
    .restart local v35    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1697
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1698
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v35

    .line 1699
    .restart local v35    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    .line 1702
    .end local v35    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mSpecificTop:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v4, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .line 1703
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v35    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1705
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v35

    .line 1706
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1714
    .end local v35    # "sel":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1715
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1716
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v35

    .line 1717
    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1719
    .end local v30    # "position":I
    .end local v35    # "sel":Landroid/view/View;
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v4, :cond_20

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_20

    .line 1720
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectedPosition:I

    if-nez v5, :cond_1f

    .end local v8    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_1f
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_8

    .line 1722
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mItemCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v4, v0, :cond_22

    .line 1723
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v29, :cond_21

    .end local v8    # "childrenTop":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v35    # "sel":Landroid/view/View;
    .restart local v8    # "childrenTop":I
    :cond_21
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_9

    .line 1726
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v35

    .restart local v35    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1739
    .end local v8    # "childrenTop":I
    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1752
    .restart local v22    # "focusWasTaken":Z
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1756
    .end local v22    # "focusWasTaken":Z
    :cond_25
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1760
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v38, 0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mTouchMode:I

    const/16 v38, 0x2

    move/from16 v0, v38

    if-ne v4, v0, :cond_29

    :cond_27
    const/16 v26, 0x1

    .line 1762
    .local v26, "inTouchMode":Z
    :goto_a
    if-eqz v26, :cond_2a

    .line 1764
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1765
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_28

    .line 1766
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1784
    .end local v14    # "child":Landroid/view/View;
    :cond_28
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v21, :cond_16

    .line 1785
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1760
    .end local v26    # "inTouchMode":Z
    :cond_29
    const/16 v26, 0x0

    goto :goto_a

    .line 1768
    .restart local v26    # "inTouchMode":Z
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v4, v0, :cond_2b

    .line 1772
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mFirstPosition:I

    move/from16 v38, v0

    sub-int v4, v4, v38

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1773
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_28

    .line 1774
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1778
    .end local v14    # "child":Landroid/view/View;
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/ListView;->mSelectedTop:I

    .line 1779
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 1803
    .end local v26    # "inTouchMode":Z
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2c
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_7

    .line 1805
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2d
    const/4 v4, -0x1

    if-eq v12, v4, :cond_17

    .line 1807
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v38, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v30

    .line 1810
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    .line 1811
    .local v34, "restoreView":Landroid/view/View;
    if-eqz v34, :cond_17

    .line 1812
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 1556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1681
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2079
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2080
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2103
    :cond_0
    :goto_0
    return v2

    .line 2084
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2085
    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_3

    .line 2086
    if-eqz p2, :cond_2

    .line 2087
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2088
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2089
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2092
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2093
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2094
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2099
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 2103
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2119
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2120
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2151
    :cond_1
    :goto_0
    return v1

    .line 2125
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2126
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2131
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2132
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2133
    if-eqz p3, :cond_4

    .line 2134
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2135
    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2136
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2138
    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    .line 2139
    goto :goto_0

    .line 2142
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2143
    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2144
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2146
    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    .line 2147
    goto :goto_0

    :cond_6
    move v1, p2

    .line 2151
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1281
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1282
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1283
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1337
    :cond_0
    :goto_0
    return v6

    .line 1287
    :cond_1
    iget-object v10, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1288
    .local v9, "returnedHeight":I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1291
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1296
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1297
    :cond_2
    iget-object v7, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1298
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1299
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1301
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1302
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1304
    .local v2, "child":Landroid/view/View;
    move/from16 v0, p4

    invoke-direct {p0, v2, v4, p1, v0}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1306
    if-lez v4, :cond_3

    .line 1308
    add-int/2addr v9, v3

    .line 1312
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1314
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1317
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1319
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1322
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1288
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1330
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1331
    move v6, v9

    .line 1301
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1337
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3782
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3784
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3785
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3787
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3789
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3791
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3725
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3727
    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3728
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3729
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3730
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3731
    iget v12, p0, Landroid/widget/ListView;->mScrollX:I

    iget v13, p0, Landroid/widget/ListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3735
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3736
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3737
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3742
    :cond_0
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3743
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3744
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 3745
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3747
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3749
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3747
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3753
    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3754
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3755
    invoke-virtual {p0, v10, v11}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3756
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3758
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3759
    move v9, v6

    .line 3760
    move v5, v8

    .line 3761
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    .line 3766
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_4

    .line 3767
    iget v12, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3771
    :goto_2
    return-void

    .line 3769
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4093
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4095
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 4096
    .local v7, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    move v4, v1

    .line 4097
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    move v0, p2

    move v3, v1

    .line 4098
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4100
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4101
    return-void

    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v4, v2

    .line 4096
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4054
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4056
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 4057
    .local v1, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 4058
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4060
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4062
    if-lez v1, :cond_0

    .line 4063
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4065
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2197
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1165
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1167
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1168
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1169
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1170
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1172
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1173
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1174
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1176
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 1177
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v11, :cond_0

    if-nez v10, :cond_1

    .line 1179
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1183
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1, v4}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1185
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1186
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1187
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1189
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1191
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1195
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v11, :cond_5

    .line 1196
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1202
    :goto_1
    if-nez v10, :cond_2

    .line 1203
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1207
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_3

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1209
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1212
    :cond_3
    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1214
    iput p1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1215
    return-void

    .line 1176
    :cond_4
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1199
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1147
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1148
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1149
    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1150
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1151
    .local v0, "childBottom":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1152
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1153
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1154
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1156
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1159
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1160
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2367
    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    .line 2368
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2369
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2377
    .local v0, "down":Z
    :goto_0
    if-ltz v1, :cond_3

    .line 2378
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2379
    .local v2, "position":I
    if-ltz v2, :cond_3

    .line 2380
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2381
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2383
    if-eqz v0, :cond_0

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_0

    .line 2384
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2387
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2388
    iput v4, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2391
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2392
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2393
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2394
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    move v3, v4

    .line 2401
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_3
    return v3

    .line 2370
    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_3

    .line 2371
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2372
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 4070
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4087
    :goto_0
    return v2

    .line 4074
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4087
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4076
    :pswitch_0
    const-string v3, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4077
    .local v1, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4078
    .local v0, "position":I
    if-ltz v1, :cond_1

    .line 4081
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 4074
    :pswitch_data_0
    .packed-switch 0x1020037
        :pswitch_0
    .end packed-switch
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1250
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 423
    :cond_0
    const/4 v0, 0x1

    .line 425
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 428
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 329
    :cond_0
    const/4 v0, 0x1

    .line 331
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 334
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 578
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 581
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 584
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v6

    .line 585
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v8

    .line 586
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 587
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 589
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 591
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    .line 592
    :cond_0
    add-int/2addr v8, v5

    .line 596
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 597
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 599
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 601
    iget v13, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    .line 603
    :cond_2
    sub-int/2addr v7, v5

    .line 607
    :cond_3
    const/4 v11, 0x0

    .line 609
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 616
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 623
    :goto_0
    sub-int v4, v1, v7

    .line 624
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 644
    .end local v4    # "distanceToBottom":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 645
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 646
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 647
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 649
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 651
    :cond_5
    return v10

    .line 619
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 625
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    .line 632
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 639
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 640
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 641
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 635
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 644
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 531
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 533
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 535
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 536
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 475
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 477
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 478
    :cond_1
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 483
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 484
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 487
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 489
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 490
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 491
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    iput v1, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 492
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mItemCount:I

    .line 493
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 495
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 496
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 498
    iget-object v1, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 501
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 502
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 506
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 507
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 509
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 511
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 520
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 521
    return-void

    .line 480
    :cond_3
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 504
    :cond_4
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 514
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 515
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 517
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3236
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3237
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3238
    if-eqz v0, :cond_1

    .line 3239
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3240
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3242
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3244
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3245
    return-void

    .line 3236
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3608
    if-eqz p1, :cond_2

    .line 3609
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3613
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3614
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3615
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3616
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3617
    return-void

    .line 3611
    :cond_2
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3633
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3634
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3635
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3636
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3671
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3672
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3673
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3648
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3649
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3650
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3199
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3200
    if-nez p1, :cond_0

    .line 3201
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3203
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3712
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3713
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3714
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3691
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3692
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3693
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3695
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 452
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2035
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2036
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2159
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2160
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2161
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2172
    :goto_0
    return-void

    .line 2165
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2166
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2168
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2169
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2045
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2046
    const/4 v0, 0x0

    .line 2048
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2050
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2051
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2052
    const/4 v0, 0x1

    .line 2058
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2059
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2062
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2064
    if-eqz v0, :cond_2

    .line 2065
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2067
    :cond_2
    return-void

    .line 2053
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2054
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 958
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 959
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 949
    return-void
.end method
