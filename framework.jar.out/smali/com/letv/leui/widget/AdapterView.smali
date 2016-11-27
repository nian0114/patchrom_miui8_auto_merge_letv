.class public abstract Lcom/letv/leui/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/AdapterView$1;,
        Lcom/letv/leui/widget/AdapterView$SelectionNotifier;,
        Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;,
        Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;,
        Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;,
        Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;,
        Lcom/letv/leui/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    iput-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/AdapterView;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AdapterView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/AdapterView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .local v3, "selection":I
    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/letv/leui/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .local v0, "position":I
    if-ltz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView;->onLayout(ZIIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v3, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/AdapterView;->updateEmptyStatus(Z)V

    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->selectionChanged()V

    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .local v3, "count":I
    if-nez v3, :cond_1

    const/4 v13, -0x1

    :cond_0
    :goto_0
    return v13

    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    const/4 v13, -0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .local v4, "endTime":J
    move v6, v13

    .local v6, "first":I
    move v9, v13

    .local v9, "last":I
    const/4 v12, 0x0

    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    const/4 v13, -0x1

    goto :goto_0

    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v13, v9

    const/4 v12, 0x0

    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    :cond_a
    add-int/lit8 v6, v6, -0x1

    move v13, v6

    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/letv/leui/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    move-object v3, p1

    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v4

    goto :goto_0

    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    :cond_0
    :goto_1
    return v5

    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v5, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "found":Z
    if-lez v0, :cond_4

    iget-boolean v4, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .local v2, "newPos":I
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2, v7}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v1, 0x1

    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    invoke-virtual {p0, v2, v5}, Lcom/letv/leui/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    :cond_3
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/AdapterView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->checkSelectionChanged()V

    const/4 v1, 0x1

    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    iput v6, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iput-wide v8, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    iput v6, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v8, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->checkSelectionChanged()V

    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/AdapterView;->mLayoutHeight:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->playSoundEffect(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v5, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncHeight:J

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSpecificTop:I

    :cond_0
    iput v4, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/AdapterView;->mSpecificTop:I

    :cond_3
    iput v5, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    new-instance v0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;-><init>(Lcom/letv/leui/widget/AdapterView;Lcom/letv/leui/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectionNotifier:Lcom/letv/leui/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->fireOnSelected()V

    invoke-direct {p0}, Lcom/letv/leui/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .local v1, "empty":Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/AdapterView;->updateEmptyStatus(Z)V

    return-void

    .end local v1    # "empty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/letv/leui/widget/AdapterView;->mDesiredFocusableState:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iget-boolean v0, p0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mSyncPosition:I

    iget-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AdapterView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView;->mOnItemSelectedListener:Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method
