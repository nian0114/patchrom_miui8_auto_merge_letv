.class public abstract Lcom/letv/leui/widget/AbsSpinner;
.super Lcom/letv/leui/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/AbsSpinner$RecycleBin;,
        Lcom/letv/leui/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;-><init>(Lcom/letv/leui/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-direct {p0}, Lcom/letv/leui/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;-><init>(Lcom/letv/leui/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-direct {p0}, Lcom/letv/leui/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AbsSpinner;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AbsSpinner;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AbsSpinner;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZ)V
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/letv/leui/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .local v6, "widthMode":I
    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    iget v10, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    iget v10, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    iget v10, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    iget v10, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->handleDataChanged()V

    :cond_0
    const/4 v2, 0x0

    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .local v4, "selectedPosition":I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    iput-boolean v12, p0, Lcom/letv/leui/widget/AbsSpinner;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v11, p0, Lcom/letv/leui/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/letv/leui/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    const/4 v1, 0x0

    .end local v5    # "view":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/letv/leui/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, p2, v11}, Lcom/letv/leui/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .local v0, "heightSize":I
    invoke-static {v3, p1, v11}, Lcom/letv/leui/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Lcom/letv/leui/widget/AbsSpinner;->setMeasuredDimension(II)V

    iput p2, p0, Lcom/letv/leui/widget/AbsSpinner;->mHeightMeasureSpec:I

    iput p1, p0, Lcom/letv/leui/widget/AbsSpinner;->mWidthMeasureSpec:I

    return-void

    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_6
    iget v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    :cond_9
    iget v8, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x1

    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;

    .local v0, "ss":Lcom/letv/leui/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/letv/leui/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iput-boolean v6, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/AbsSpinner;->mNeedSync:Z

    iget-wide v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mSyncRowId:J

    iget v1, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mSyncMode:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Lcom/letv/leui/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->selectedId:J

    iget-wide v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->position:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/letv/leui/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    iget-object v4, p0, Lcom/letv/leui/widget/AbsSpinner;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    .local v4, "recycleBin":Lcom/letv/leui/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/letv/leui/widget/AbsSpinner;->mFirstPosition:I

    .local v3, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "v":Landroid/view/View;
    add-int v2, v3, v1

    .local v2, "index":I
    invoke-virtual {v4, v2, v5}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "index":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/letv/leui/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->resetList()V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iput v0, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldItemCount:I

    iget-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->checkFocus()V

    new-instance v1, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/letv/leui/widget/AdapterView;)V

    iput-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "position":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->checkSelectionChanged()V

    .end local v0    # "position":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->requestLayout()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->checkFocus()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->resetList()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .local v0, "shouldAnimate":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void

    .end local v0    # "shouldAnimate":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mBlockLayoutRequests:Z

    iget v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .local v0, "delta":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/AbsSpinner;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .end local v0    # "delta":I
    :cond_0
    return-void
.end method
