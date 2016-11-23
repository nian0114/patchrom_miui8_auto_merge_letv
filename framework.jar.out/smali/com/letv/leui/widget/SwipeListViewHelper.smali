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

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    .line 37
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    .line 38
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    .line 41
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/SwipeListViewHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listView"    # Lcom/letv/leui/widget/LeListView;
    .param p3, "callback"    # Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/letv/leui/widget/SwipeListViewHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V

    .line 47
    return-void
.end method

.method private closeAnimateInternal(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 258
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 260
    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 261
    return-void
.end method

.method private closeNoAnimateInternal(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 265
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 266
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeNoAnimate()V

    .line 269
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;Lcom/letv/leui/widget/SwipeListViewHelper$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "listView"    # Lcom/letv/leui/widget/LeListView;
    .param p4, "callback"    # Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    .line 59
    :cond_0
    iput-object p4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    .line 62
    return-void
.end method

.method private isItemsOpened()Z
    .locals 3

    .prologue
    .line 142
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

    .line 143
    .local v1, "opened":Z
    if-eqz v1, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 147
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
    .line 273
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeAnimateInternal(I)V

    .line 274
    return-void
.end method

.method public closeAnimate(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 247
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v0

    .line 248
    .local v0, "numHeaders":I
    add-int/2addr p1, v0

    .line 250
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 251
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 252
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 253
    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 254
    return-void
.end method

.method protected closeOpenedItem(I)Z
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 483
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isItemsOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    :cond_0
    const/4 v1, 0x0

    .line 498
    :goto_0
    return v1

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 489
    .local v0, "opened":Z
    if-nez v0, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    .line 491
    const/4 v1, 0x1

    goto :goto_0

    .line 494
    :cond_2
    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 495
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    .line 496
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 498
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public closeOpenedItems()V
    .locals 4

    .prologue
    .line 168
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFirstVisiblePositionSwipe()I

    move-result v2

    .line 170
    .local v2, "start":I
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getLastVisiblePositionSwipe()I

    move-result v0

    .line 171
    .local v0, "end":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 172
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

    .line 173
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeAnimateInternal(I)V

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
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
    .line 183
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
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

    .line 185
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeNoAnimateInternal(I)V

    .line 188
    :cond_0
    return-void
.end method

.method protected generateAnimate(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 429
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 430
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    .line 432
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateAnimate(Landroid/view/View;ZZ)V

    .line 433
    return-void
.end method

.method protected generateDismissAnimate(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 443
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 444
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V

    .line 445
    return-void
.end method

.method protected generateRevealAnimate(Landroid/view/View;ZZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 437
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 439
    return-void
.end method

.method protected generateSwitchAnimate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isSwitched"    # Z

    .prologue
    .line 449
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V

    .line 451
    return-void
.end method

.method protected getBackView()Landroid/view/View;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getFrontView()Landroid/view/View;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeClosesAllItemsWhenListMoves()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    return v0
.end method

.method public getSwipeListViewListener()Lcom/letv/leui/widget/SwipeListViewListener;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    return-object v0
.end method

.method public getSwipeListViewSwitchListener()Lcom/letv/leui/widget/SwipeListViewSwitchListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 120
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
    .line 116
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    return v0
.end method

.method protected onChangeSwipeMode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 717
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-eq v1, v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/SwipeListViewListener;->onChangeSwipeMode(I)I

    move-result v0

    .line 720
    :cond_0
    return v0
.end method

.method protected onClosed(Z)V
    .locals 4
    .param p1, "fromRight"    # Z

    .prologue
    .line 662
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 663
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .line 667
    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onClosed(IZ)V

    .line 670
    :cond_0
    return-void
.end method

.method public onDismissAnimationEnd(Landroid/view/View;I)V
    .locals 3
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 414
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->resetCell(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 416
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method public onDismissAnimationStart(Landroid/view/View;I)V
    .locals 1
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 408
    return-void
.end method

.method protected onFirstListItem()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onFirstListItem()V

    .line 679
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

    .line 278
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v5

    .line 279
    .local v5, "numHeaders":I
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFooterViewsCountSwipe()I

    move-result v4

    .line 280
    .local v4, "numFooters":I
    iget-object v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v8}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 281
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

    .line 282
    .local v6, "position":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 287
    .local v0, "action":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v8, :cond_1

    move v3, v7

    .line 329
    :cond_0
    :goto_0
    return v3

    .line 291
    :cond_1
    if-nez v0, :cond_6

    .line 292
    iget-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mPaused:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_0

    .line 298
    if-lt v6, v5, :cond_2

    sub-int v8, v2, v4

    if-lt v6, v8, :cond_4

    .line 299
    :cond_2
    const/4 v3, 0x0

    .line 300
    .local v3, "intercept":Z
    invoke-direct {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isItemsOpened()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 301
    const/4 v3, 0x1

    .line 304
    :cond_3
    iput v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 305
    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 306
    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    .line 307
    iput-object v11, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 308
    iput-object v11, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mBackView:Landroid/view/View;

    goto :goto_0

    .line 312
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

    .line 313
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    goto :goto_0

    .line 317
    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v7}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 320
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

    .line 323
    iput v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 324
    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 325
    iget-object v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRight:Z

    .line 329
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_6
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onLastListItem()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onLastListItem()V

    .line 688
    :cond_0
    return-void
.end method

.method protected onListChanged()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListViewListener;->onListChanged()V

    .line 697
    :cond_0
    return-void
.end method

.method protected onMove(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 705
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onMove(IF)V

    .line 708
    :cond_0
    return-void
.end method

.method protected onOpened(Z)V
    .locals 4
    .param p1, "toRight"    # Z

    .prologue
    .line 646
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .line 651
    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onOpened(IZ)V

    .line 654
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

    .line 86
    iget-boolean v5, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    if-eqz v5, :cond_3

    .line 87
    if-ne p2, v4, :cond_2

    move v3, v4

    .line 88
    .local v3, "onSecondItemList":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 89
    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    .line 98
    .end local v3    # "onSecondItemList":Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    if-eqz v5, :cond_6

    .line 99
    add-int v5, p2, p3

    add-int/lit8 v6, p4, -0x1

    if-ne v5, v6, :cond_5

    move v0, v4

    .line 100
    .local v0, "onBeforeLastItemList":Z
    :goto_2
    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    .line 110
    .end local v0    # "onBeforeLastItemList":Z
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    .line 87
    goto :goto_0

    .line 92
    :cond_3
    if-nez p2, :cond_4

    move v1, v4

    .line 93
    .local v1, "onFirstItemList":Z
    :goto_4
    if-eqz v1, :cond_0

    .line 94
    iput-boolean v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isFirstItem:Z

    .line 95
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->onFirstListItem()V

    goto :goto_1

    .end local v1    # "onFirstItemList":Z
    :cond_4
    move v1, v2

    .line 92
    goto :goto_4

    :cond_5
    move v0, v2

    .line 99
    goto :goto_2

    .line 104
    :cond_6
    add-int v5, p2, p3

    if-lt v5, p4, :cond_7

    move v2, v4

    .line 105
    .local v2, "onLastItemList":Z
    :cond_7
    if-eqz v2, :cond_1

    .line 106
    iput-boolean v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->isLastItem:Z

    .line 107
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

    .line 66
    if-ne p2, v1, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 67
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    .line 71
    :cond_0
    if-eq p2, v1, :cond_1

    if-ne p2, v3, :cond_2

    .line 72
    :cond_1
    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    .line 73
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 75
    :cond_2
    if-eq p2, v3, :cond_3

    if-eq p2, v1, :cond_3

    .line 76
    iput-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    .line 78
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 81
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 66
    goto :goto_0
.end method

.method protected onStartClose(Z)V
    .locals 3
    .param p1, "right"    # Z

    .prologue
    .line 609
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .line 611
    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1}, Lcom/letv/leui/widget/SwipeListViewListener;->onStartClose(IZ)V

    .line 614
    :cond_0
    return-void
.end method

.method protected onStartOpen(IZ)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "right"    # Z

    .prologue
    .line 595
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v2

    sub-int v0, v1, v2

    .line 597
    .local v0, "retPosition":I
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    invoke-interface {v1, v0, p1, p2}, Lcom/letv/leui/widget/SwipeListViewListener;->onStartOpen(IIZ)V

    .line 600
    :cond_0
    return-void
.end method

.method protected onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "swap"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    .line 457
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, p2, v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->onDismissedSwipe(Landroid/view/View;I)V

    .line 459
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method protected onSwipeRevealed(ZZLjava/lang/Object;)V
    .locals 3
    .param p1, "swap"    # Z
    .param p2, "swapRight"    # Z
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    iget-boolean v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-boolean v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZLjava/lang/Object;)V

    .line 473
    return-void
.end method

.method protected onSwipeSwitched(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "isSwitched"    # Z
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 737
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewSwitchListener;->onSwitched(IZ)V

    .line 740
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitched(ZLjava/lang/Object;)V

    .line 741
    return-void
.end method

.method protected onSwipeSwitching(Z)V
    .locals 2
    .param p1, "isChanged"    # Z

    .prologue
    .line 727
    iget v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v0, v1, p1}, Lcom/letv/leui/widget/SwipeListViewSwitchListener;->onSwitching(IZ)V

    .line 730
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 731
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

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 336
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 337
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 339
    .local v6, "y":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isSwipeTouchEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v7

    .line 345
    :cond_1
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v9, :cond_2

    if-nez v0, :cond_2

    .line 346
    iput-boolean v7, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    move v7, v8

    .line 347
    goto :goto_0

    .line 349
    :cond_2
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    if-eqz v9, :cond_3

    if-ne v0, v7, :cond_3

    .line 350
    iput-boolean v8, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    move v7, v8

    .line 351
    goto :goto_0

    .line 353
    :cond_3
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mRemoveFirstTouchWhenFling:Z

    if-eqz v9, :cond_4

    if-ne v0, v11, :cond_4

    move v7, v8

    .line 354
    goto :goto_0

    .line 361
    :cond_4
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mListViewMoving:Z

    if-eqz v9, :cond_5

    move v7, v8

    .line 362
    goto :goto_0

    .line 365
    :cond_5
    iget v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mViewWidth:I

    if-ge v9, v11, :cond_6

    .line 366
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getSwipeViewWidth()I

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mViewWidth:I

    .line 369
    :cond_6
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v3

    .line 370
    .local v3, "numHeaders":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFooterViewsCountSwipe()I

    move-result v2

    .line 371
    .local v2, "numFooters":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 372
    .local v1, "countOfAll":I
    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v9, v5, v6}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v4

    .line 377
    .local v4, "touchedPosition":I
    if-eq v4, v10, :cond_a

    if-lt v4, v3, :cond_7

    sub-int v9, v1, v2

    if-lt v4, v9, :cond_a

    .line 379
    :cond_7
    if-nez v0, :cond_8

    .line 380
    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItems()V

    .line 391
    :cond_8
    if-nez v0, :cond_b

    .line 392
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mPaused:Z

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_0

    .line 396
    iget-boolean v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    if-nez v9, :cond_9

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/SwipeListViewHelper;->closeOpenedItem(I)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_9
    move v7, v8

    .line 400
    goto :goto_0

    .line 384
    :cond_a
    if-ne v4, v10, :cond_8

    iget-object v9, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    if-nez v9, :cond_8

    goto :goto_0

    .line 403
    :cond_b
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method public openAnimate()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public openAnimate(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getHeaderViewsCountSwipe()I

    move-result v0

    .line 229
    .local v0, "numHeaders":I
    add-int/2addr p1, v0

    .line 231
    iput p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 232
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 233
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getFrontView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mFrontView:Landroid/view/View;

    .line 234
    invoke-super {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->openAnimate()V

    .line 235
    return-void
.end method

.method protected resetCell(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 571
    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-eq v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/SwipeListViewHelper;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpened:Z

    .line 574
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    .line 577
    :cond_0
    const/4 v0, -0x1

    .line 578
    .local v0, "animPosition":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 579
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    if-ne v0, v1, :cond_3

    .line 582
    :cond_2
    iput v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mDownPosition:I

    .line 585
    .end local v0    # "animPosition":I
    :cond_3
    return-void
.end method

.method public resetItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getAdapterSwipe()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 155
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 157
    .local v1, "count":I
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 158
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v3, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpenedRights:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
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
    .line 541
    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4, p1, p2}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v3

    .line 542
    .local v3, "position":I
    iget-object v4, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v4, v3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 544
    .local v1, "backView":Landroid/view/ViewGroup;
    if-ltz v3, :cond_0

    if-nez v1, :cond_1

    .line 558
    :cond_0
    return-void

    .line 550
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

    .line 552
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 553
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, "backChildView":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 552
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

    .line 512
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6, p2, p3}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->pointToPositionSwipe(II)I

    move-result v5

    .line 513
    .local v5, "position":I
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v6, v5}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->getBackView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 515
    .local v1, "backView":Landroid/view/ViewGroup;
    if-ltz v5, :cond_0

    if-nez v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v7

    .line 521
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

    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, "opened":Z
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 525
    .local v4, "openedsSize":I
    if-ltz v5, :cond_2

    if-ge v5, v4, :cond_2

    .line 526
    iget-object v6, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mOpeneds:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 529
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 530
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "backChildView":Landroid/view/View;
    if-eqz p1, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 532
    if-eqz p1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 533
    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v6, v3

    .line 531
    goto :goto_2

    :cond_4
    move v6, v3

    .line 532
    goto :goto_3

    .line 537
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
    .line 129
    iput-boolean p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeClosesAllItemsWhenListMoves:Z

    .line 130
    return-void
.end method

.method public setSwipeListViewListener(Lcom/letv/leui/widget/SwipeListViewListener;)V
    .locals 0
    .param p1, "swipeListViewListener"    # Lcom/letv/leui/widget/SwipeListViewListener;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewListener:Lcom/letv/leui/widget/SwipeListViewListener;

    .line 197
    return-void
.end method

.method public setSwipeListViewSwitchListener(Lcom/letv/leui/widget/SwipeListViewSwitchListener;)V
    .locals 0
    .param p1, "swipeListViewSwitchListener"    # Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mSwipeListViewSwitchListener:Lcom/letv/leui/widget/SwipeListViewSwitchListener;

    .line 213
    return-void
.end method

.method protected superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper;->mCallback:Lcom/letv/leui/widget/SwipeListViewHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListViewHelper$Callback;->superOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
