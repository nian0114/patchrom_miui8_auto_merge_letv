.class public Lcom/letv/leui/widget/SwipeListViewHelper;
.super Lcom/letv/leui/widget/BaseSwipeHelper;
.source "SwipeListViewHelper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/SwipeListViewHelper$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SWPIE_LISTVIEW_HELPER"


# instance fields
.field private isFirstItem:Z

.field private isLastItem:Z

.field private mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

.field private mDownPosition:I

.field private mListViewMoving:Z

.field private mOpenedRights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeneds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveFirstTouchWhenFling:Z

.field private mSwipeClosesAllItemsWhenListMoves:Z

.field private mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

.field private mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "listView"    # Lcom/letv/leui/widget/LeListView;
    .param p4, "callback"    # Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/SwipeListViewHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/letv/leui/widget/LeListView;
    .param p3, "callback"    # Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/letv/leui/widget/SwipeListViewHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    return-void
.end method

.method private closeAnimateInternal(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    return-void
.end method

.method private closeNoAnimateInternal(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeNoAnimate()V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "listView"    # Lcom/letv/leui/widget/LeListView;
    .param p4, "callback"    # Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .prologue
    if-eqz p2, :cond_0

    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    :cond_0
    iput-object p4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    return-void
.end method

.method private isItemsOpened()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "opened":Z
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .end local v1    # "opened":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeAnimate()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeAnimateInternal(I)V

    return-void
.end method

.method public closeAnimate(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v0

    .local v0, "numHeaders":I
    add-int/2addr p1, v0

    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    return-void
.end method

.method protected closeOpenedItem(I)Z
    .locals 3
    .param p1, "x"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isItemsOpened()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "opened":Z
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public closeOpenedItems()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFirstVisiblePositionSwipe()I

    move-result v2

    .local v2, "start":I
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getLastVisiblePositionSwipe()I

    move-result v0

    .local v0, "end":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeAnimateInternal(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "i":I
    .end local v2    # "start":I
    :cond_1
    return-void
.end method

.method public closeTheOpenedItem(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeNoAnimateInternal(I)V

    :cond_0
    return-void
.end method

.method protected generateAnimate(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateAnimate(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected generateDismissAnimate(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected generateRevealAnimate(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected generateSwitchAnimate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isSwitched"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V

    return-void
.end method

.method protected getBackView()Landroid/view/View;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getFrontView()Landroid/view/View;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeClosesAllItemsWhenListMoves()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    return v0
.end method

.method public getSwipeListViewListener()Lcom/letv/leui/widget/SwipeListViewListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    return-object v0
.end method

.method public getSwipeListViewSwitchListener()Lcom/letv/leui/widget/SwipeListViewSwitchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->isDismissAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewMoving()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    return v0
.end method

.method protected onChangeSwipeMode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewListener;->onChangeSwipeMode(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected onClosed(Z)V
    .locals 4
    .param p1, "fromRight"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onClosed(IZ)V

    :cond_0
    return-void
.end method

.method public onDismissAnimationEnd(Landroid/view/View;I)V
    .locals 3
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->resetCell(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDismissAnimationStart(Landroid/view/View;I)V
    .locals 1
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    return-void
.end method

.method protected onFirstListItem()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onFirstListItem()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v5

    .local v5, "numHeaders":I
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFooterViewsCountSwipe()I

    move-result v4

    .local v4, "numFooters":I
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .local v2, "countOfAll":I
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-interface {v8, v9, v10}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v6

    .local v6, "position":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v8, :cond_1

    move v3, v7

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-nez v0, :cond_6

    iget-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mPaused:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_0

    if-lt v6, v5, :cond_2

    sub-int v8, v2, v4

    if-lt v6, v8, :cond_4

    :cond_2
    const/4 v3, 0x0

    .local v3, "intercept":Z
    invoke-direct {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isItemsOpened()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    iput-object v11, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    iput-object v11, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mBackView:Landroid/view/View;

    goto :goto_0

    .end local v3    # "intercept":Z
    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isItemsOpened()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v7}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_6

    iput v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onLastListItem()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onLastListItem()V

    :cond_0
    return-void
.end method

.method protected onListChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onListChanged()V

    :cond_0
    return-void
.end method

.method protected onMove(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onMove(IF)V

    :cond_0
    return-void
.end method

.method protected onOpened(Z)V
    .locals 4
    .param p1, "toRight"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onOpened(IZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    if-eqz v5, :cond_3

    if-ne p2, v4, :cond_2

    move v3, v4

    .local v3, "onSecondItemList":Z
    :goto_0
    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    .end local v3    # "onSecondItemList":Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    if-eqz v5, :cond_6

    add-int v5, p2, p3

    add-int/lit8 v6, p4, -0x1

    if-ne v5, v6, :cond_5

    move v0, v4

    .local v0, "onBeforeLastItemList":Z
    :goto_2
    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    .end local v0    # "onBeforeLastItemList":Z
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    move v1, v4

    .local v1, "onFirstItemList":Z
    :goto_4
    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->onFirstListItem()V

    goto :goto_1

    .end local v1    # "onFirstItemList":Z
    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    add-int v5, p2, p3

    if-lt v5, p4, :cond_7

    move v2, v4

    .local v2, "onLastItemList":Z
    :cond_7
    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->onLastListItem()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    :cond_0
    if-eq p2, v1, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    :cond_2
    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_3

    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected onStartClose(Z)V
    .locals 3
    .param p1, "right"    # Z

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onStartClose(IZ)V

    :cond_0
    return-void
.end method

.method protected onStartOpen(IZ)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "right"    # Z

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1, p2}, Lcom/letv/leui/widget/SwipeListViewListener;->onStartOpen(IIZ)V

    :cond_0
    return-void
.end method

.method protected onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "swap"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, p2, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->onDismissedSwipe(Landroid/view/View;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method protected onSwipeRevealed(ZZLjava/lang/Object;)V
    .locals 3
    .param p1, "swap"    # Z
    .param p2, "swapRight"    # Z
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZLjava/lang/Object;)V

    return-void
.end method

.method protected onSwipeSwitched(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "isSwitched"    # Z
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewSwitchListener;->onSwitched(IZ)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitched(ZLjava/lang/Object;)V

    return-void
.end method

.method protected onSwipeSwitching(Z)V
    .locals 2
    .param p1, "isChanged"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewSwitchListener;->onSwitching(IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .local v6, "y":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isSwipeTouchEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v9, :cond_2

    if-nez v0, :cond_2

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    move v7, v8

    goto :goto_0

    :cond_2
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    if-eqz v9, :cond_3

    if-ne v0, v7, :cond_3

    iput-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    move v7, v8

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    if-eqz v9, :cond_4

    if-ne v0, v11, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v9, :cond_5

    move v7, v8

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mViewWidth:I

    if-ge v9, v11, :cond_6

    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getSwipeViewWidth()I

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mViewWidth:I

    :cond_6
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v3

    .local v3, "numHeaders":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFooterViewsCountSwipe()I

    move-result v2

    .local v2, "numFooters":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "countOfAll":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9, v5, v6}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v4

    .local v4, "touchedPosition":I
    if-eq v4, v10, :cond_a

    if-lt v4, v3, :cond_7

    sub-int v9, v1, v2

    if-lt v4, v9, :cond_a

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    :cond_8
    if-nez v0, :cond_b

    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mPaused:Z

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    if-nez v9, :cond_9

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItem(I)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_9
    move v7, v8

    goto :goto_0

    :cond_a
    if-ne v4, v10, :cond_8

    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    if-nez v9, :cond_8

    goto :goto_0

    :cond_b
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method public openAnimate()V
    .locals 0

    .prologue
    return-void
.end method

.method public openAnimate(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v0

    .local v0, "numHeaders":I
    add-int/2addr p1, v0

    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->openAnimate()V

    return-void
.end method

.method protected resetCell(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-eq v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    .local v0, "animPosition":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-ne v0, v1, :cond_3

    :cond_2
    iput v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .end local v0    # "animPosition":I
    :cond_3
    return-void
.end method

.method public resetItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "count":I
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected setBackViewChildFocusable(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4, p1, p2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v3

    .local v3, "position":I
    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4, v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "backView":Landroid/view/ViewGroup;
    if-ltz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "backChildView":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setBackViewClickable(ZII)Z
    .locals 8
    .param p1, "forceUnClickable"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6, p2, p3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v5

    .local v5, "position":I
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6, v5}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "backView":Landroid/view/ViewGroup;
    if-ltz v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-ltz v6, :cond_5

    const/4 v3, 0x0

    .local v3, "opened":Z
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "openedsSize":I
    if-ltz v5, :cond_2

    if-ge v5, v4, :cond_2

    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "backChildView":Landroid/view/View;
    if-eqz p1, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v3

    goto :goto_3

    .end local v0    # "backChildView":Landroid/view/View;
    .end local v2    # "j":I
    .end local v3    # "opened":Z
    .end local v4    # "openedsSize":I
    :cond_5
    iget-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    goto :goto_0
.end method

.method public setSwipeClosesAllItemsWhenListMoves(Z)V
    .locals 0
    .param p1, "swipeClosesAllItemsWhenListMoves"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    return-void
.end method

.method public setSwipeListViewListener(Lcom/letv/leui/widget/SwipeListViewListener;)V
    .locals 0
    .param p1, "swipeListViewListener"    # Lcom/letv/leui/widget/SwipeListViewListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    return-void
.end method

.method public setSwipeListViewSwitchListener(Lcom/letv/leui/widget/SwipeListViewSwitchListener;)V
    .locals 0
    .param p1, "swipeListViewSwitchListener"    # Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    return-void
.end method

.method protected superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->superOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
