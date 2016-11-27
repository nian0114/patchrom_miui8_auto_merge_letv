.class public Lcom/letv/leui/widget/LeListView;
.super Landroid/widget/ListView;
.source "LeListView.java"

# interfaces
.implements Lcom/letv/leui/widget/SwipeListViewHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeListView$AdapterWrapper;,
        Lcom/letv/leui/widget/LeListView$PendingDismissData;,
        Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISMISS_ANIM_TIME:I = 0xc8

.field public static final LE_DRAG_SORT:I = 0x2

.field public static final LE_NONE:I = 0x0

.field public static final LE_SWIPE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LeListView"


# instance fields
.field private mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

.field private mChecked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissAnimationRefCount:I

.field private mDismissAnimationTime:J

.field private mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

.field private mIsDismissAnimating:Z

.field private mLeListViewListener:Lcom/letv/leui/widget/LeListViewListener;

.field private mLeListViewMode:I

.field private mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMaxYOverscrollDistance:I

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LeListView$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeBackView:I

.field private mSwipeFrontView:I

.field private mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationTime:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeFrontView:I

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeBackView:I

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationTime:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeFrontView:I

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeBackView:I

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationTime:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeFrontView:I

    iput v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeBackView:I

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/LeListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$206(Lcom/letv/leui/widget/LeListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListView;->removePendingDismisses(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/DragSortHelper;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-direct {v0, p1, p0, p0}, Lcom/letv/leui/widget/SwipeListViewHelper;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    new-instance v0, Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {v0, p1, p0}, Lcom/letv/leui/widget/DragSortHelper;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    new-instance v0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;-><init>(Lcom/letv/leui/widget/LeListView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->LeListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeListView;->mSwipeFrontView:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeListView;->mSwipeBackView:I

    new-instance v1, Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/letv/leui/widget/SwipeListViewHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    new-instance v1, Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {v1, p1, v0, p0}, Lcom/letv/leui/widget/DragSortHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    new-instance v1, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;-><init>(Lcom/letv/leui/widget/LeListView;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private removePendingDismisses(I)V
    .locals 7
    .param p1, "originalHeight"    # I

    .prologue
    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .local v0, "dismissPositions":[I
    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeListView$PendingDismissData;

    iget v5, v5, Lcom/letv/leui/widget/LeListView$PendingDismissData;->position:I

    aput v5, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListView;->onDismiss([I)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;

    .local v4, "pendingDismiss":Lcom/letv/leui/widget/LeListView$PendingDismissData;
    iget-object v5, v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    iget-object v5, v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, v4, Lcom/letv/leui/widget/LeListView$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pendingDismiss":Lcom/letv/leui/widget/LeListView$PendingDismissData;
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->resetPendingDismisses()V

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->cancelDrag()V

    :cond_0
    return-void
.end method

.method public closeAnimate(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeAnimate(I)V

    return-void
.end method

.method public closeOpenedItems()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    :cond_0
    return-void
.end method

.method public closeTheOpenedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeTheOpenedItem(I)V

    :cond_0
    return-void
.end method

.method public dismiss(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListView;->performDismiss(I)I

    move-result v1

    .local v1, "height":I
    if-gtz v1, :cond_0

    const/4 v3, 0x1

    new-array v0, v3, [I

    .local v0, "dismissPositions":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v2, p1, v3

    .local v2, "retPosition":I
    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListView;->onDismiss([I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->resetPendingDismisses()V

    .end local v0    # "dismissPositions":[I
    .end local v2    # "retPosition":I
    :cond_0
    return-void
.end method

.method public dismissSelected()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getPositionsSelected()Ljava/util/List;

    move-result-object v4

    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [I

    .local v1, "dismissPositions":[I
    const/4 v2, 0x0

    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "position":I
    aput v5, v1, v3

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeListView;->performDismiss(I)I

    move-result v0

    .local v0, "auxHeight":I
    if-lez v0, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "auxHeight":I
    .end local v5    # "position":I
    :cond_1
    if-gtz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeListView;->onDismiss([I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->resetPendingDismisses()V

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public dissmiss([I)V
    .locals 5
    .param p1, "positions"    # [I

    .prologue
    const/4 v1, 0x0

    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget v3, p1, v2

    .local v3, "position":I
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeListView;->performDismiss(I)I

    move-result v0

    .local v0, "auxHeight":I
    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "auxHeight":I
    .end local v3    # "position":I
    :cond_1
    if-gtz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListView;->onDismiss([I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->resetPendingDismisses()V

    :cond_2
    return-void
.end method

.method public getAdapterSwipe()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getBackView(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, "numHeaders":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v2

    .local v2, "numFooters":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "countOfAll":I
    if-ge p1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sub-int v5, v1, v2

    if-ge p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "childView":Landroid/view/View;
    iget v4, p0, Lcom/letv/leui/widget/LeListView;->mSwipeBackView:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method protected getCountSelected()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getDragSortHelper()Lcom/letv/leui/widget/DragSortHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    return-object v0
.end method

.method public getFirstVisiblePositionSwipe()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->getFloatAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFooterViewsCountSwipe()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v0

    return v0
.end method

.method public getFrontView(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, "numHeaders":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v2

    .local v2, "numFooters":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "countOfAll":I
    if-ge p1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    sub-int v5, v1, v2

    if-ge p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "childView":Landroid/view/View;
    iget v4, p0, Lcom/letv/leui/widget/LeListView;->mSwipeFrontView:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public getHeaderViewsCountSwipe()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastVisiblePositionSwipe()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getLeListViewMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    return v0
.end method

.method protected getPositionsSelected()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->getSwipeActionLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->getSwipeActionRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getSwipeViewWidth()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getWidth()I

    move-result v0

    return v0
.end method

.method protected isChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissAnimating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->isDragEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragSortEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->isDragSortEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isSwipeEnabled()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->layoutChildren()V

    :cond_0
    return-void
.end method

.method public moveCheckState(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->moveCheckState(II)V

    :cond_0
    return-void
.end method

.method public moveItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->moveItem(II)V

    :cond_0
    return-void
.end method

.method protected onDismiss([I)V
    .locals 1
    .param p1, "reverseSortedPositions"    # [I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewListener:Lcom/letv/leui/widget/LeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewListener:Lcom/letv/leui/widget/LeListViewListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/LeListViewListener;->onDismiss([I)V

    :cond_0
    return-void
.end method

.method public onDismissedSwipe(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeListView;->performDismiss(Landroid/view/View;IZ)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/letv/leui/widget/SwipeListViewHelper;->setBackViewClickable(ZII)Z

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/DragSortHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/SwipeListViewHelper;->setBackViewClickable(ZII)Z

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onInterceptTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->updateScrollStarts()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/DragSortHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onTouchEventSuper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openAnimate(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->openAnimate(I)V

    return-void
.end method

.method protected performDismiss(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v2

    .local v2, "numHeaders":I
    add-int/2addr p1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v1

    .local v1, "end":I
    sub-int v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    if-lt p1, v3, :cond_0

    if-gt p1, v1, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, p1, v5}, Lcom/letv/leui/widget/LeListView;->performDismiss(Landroid/view/View;IZ)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sub-int/2addr p1, v2

    iget-object v5, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    new-instance v6, Lcom/letv/leui/widget/LeListView$PendingDismissData;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/letv/leui/widget/LeListView$PendingDismissData;-><init>(Lcom/letv/leui/widget/LeListView;ILandroid/view/View;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected performDismiss(Landroid/view/View;IZ)V
    .locals 9
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I
    .param p3, "doPendingDismiss"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .local v2, "originalHeight":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v5

    aput v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_0

    new-instance v4, Lcom/letv/leui/widget/LeListView$2;

    invoke-direct {v4, p0, p1, p2, v2}, Lcom/letv/leui/widget/LeListView$2;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/view/View;II)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    new-instance v4, Lcom/letv/leui/widget/LeListView$3;

    invoke-direct {v4, p0, v1, p1}, Lcom/letv/leui/widget/LeListView$3;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v4, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v3, p2, v4

    .local v3, "retposition":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    new-instance v5, Lcom/letv/leui/widget/LeListView$PendingDismissData;

    invoke-direct {v5, p0, v3, p1}, Lcom/letv/leui/widget/LeListView$PendingDismissData;-><init>(Lcom/letv/leui/widget/LeListView;ILandroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v8, p0, Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public pointToPositionSwipe(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    return v0
.end method

.method protected reloadSwipeStateInView(Landroid/view/View;)V
    .locals 1
    .param p1, "frontView"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->getSwipeClosesAllItemsWhenListMoves()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public removeCheckState(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->removeCheckState(I)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->isBlockLayoutRequests()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public resetItems()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "count":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected resetPendingDismisses()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mPendingDismisses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->resetItems()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->resetItems()V

    new-instance v0, Lcom/letv/leui/widget/LeListView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeListView$1;-><init>(Lcom/letv/leui/widget/LeListView;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    new-instance v0, Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mAdapterWrapper:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDismissAnimationTime(J)V
    .locals 3
    .param p1, "animationTime"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationTime:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/letv/leui/widget/LeListView;->mDismissAnimationTime:J

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V

    :cond_0
    return-void
.end method

.method public setDragScrollProfile(Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;)V
    .locals 1
    .param p1, "ssp"    # Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollProfile(Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;)V

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    invoke-virtual {p0, p1, p1}, Lcom/letv/leui/widget/LeListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 1
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollStarts(FF)V

    :cond_0
    return-void
.end method

.method public setDragSortListener(Lcom/letv/leui/widget/DragSortHelper$DragSortListener;)V
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragSortListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragSortListener(Lcom/letv/leui/widget/DragSortHelper$DragSortListener;)V

    :cond_0
    return-void
.end method

.method public setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DropListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V

    :cond_0
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setFloatAlpha(F)V

    :cond_0
    return-void
.end method

.method public setFloatViewManager(Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setFloatViewManager(Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;)V

    :cond_0
    return-void
.end method

.method public setLeListViewMode(I)V
    .locals 4
    .param p1, "listViewMode"    # I

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    .local v2, "preLeMode":I
    iput p1, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    const/4 v0, 0x0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    instance-of v3, v0, Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_1
    return-void

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    move-object v0, v1

    goto :goto_0

    .end local v1    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V

    :cond_0
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 1
    .param p1, "max"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setMaxScrollSpeed(F)V

    :cond_0
    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 1
    .param p1, "offsetLeft"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setOffsetLeft(F)V

    :cond_0
    return-void
.end method

.method public setOffsetRight(F)V
    .locals 1
    .param p1, "offsetRight"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setOffsetRight(F)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mLeOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setOverOffsetEnabled(Z)V
    .locals 1
    .param p1, "overOffsetEnabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setOverOffsetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 1
    .param p1, "swipeActionLeft"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeActionLeft(I)V

    :cond_0
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 1
    .param p1, "swipeActionRight"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeActionRight(I)V

    :cond_0
    return-void
.end method

.method public setSwipeCloseAllItemsWhenMoveList(Z)V
    .locals 1
    .param p1, "swipeCloseAllItemsWhenMoveList"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeClosesAllItemsWhenListMoves(Z)V

    :cond_0
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSwipeLeftSwitchLine(F)V
    .locals 1
    .param p1, "swipeLeftSwitchLine"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeLeftSwitchLine(F)V

    :cond_0
    return-void
.end method

.method public setSwipeListViewListener(Lcom/letv/leui/widget/SwipeListViewListener;)V
    .locals 1
    .param p1, "swipeListViewListener"    # Lcom/letv/leui/widget/SwipeListViewListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView;->mLeListViewListener:Lcom/letv/leui/widget/LeListViewListener;

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeListViewListener(Lcom/letv/leui/widget/SwipeListViewListener;)V

    :cond_0
    return-void
.end method

.method public setSwipeListViewSwitchListener(Lcom/letv/leui/widget/SwipeListViewSwitchListener;)V
    .locals 1
    .param p1, "swipeListViewSwitchListener"    # Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeListViewSwitchListener(Lcom/letv/leui/widget/SwipeListViewSwitchListener;)V

    :cond_0
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 1
    .param p1, "swipeMode"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeMode(I)V

    :cond_0
    return-void
.end method

.method public setSwipeRightSwitchLine(F)V
    .locals 1
    .param p1, "swipeRightSwitchLine"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setSwipeRightSwitchLine(F)V

    :cond_0
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/DragSortHelper;->startDrag(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortHelper;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopDrag()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView;->mDragSortHelper:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->stopDrag()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public superOnTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected unselectedChoiceStates()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "start":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v0

    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeListView;->mChecked:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
