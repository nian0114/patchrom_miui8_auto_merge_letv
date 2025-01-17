.class public Lcom/letv/leui/widget/PinnedHeaderListView;
.super Lcom/letv/leui/widget/LeListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;
    }
.end annotation


# static fields
.field public static final PINNED_HEADER_INVISIBLE:I = 0x1

.field public static final PINNED_HEADER_VISIBLE:I


# instance fields
.field private mAdapter:Lcom/letv/leui/widget/PinnedSectionAdapter;

.field private mHeader:Landroid/widget/RelativeLayout;

.field private mPinnedHeaderMode:I

.field private pinnedHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/PinnedHeaderListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/PinnedHeaderListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mAdapter:Lcom/letv/leui/widget/PinnedSectionAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/PinnedHeaderListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/PinnedHeaderListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->pinnedHeader:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/PinnedHeaderListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;-><init>(Lcom/letv/leui/widget/PinnedHeaderListView;)V

    invoke-super {p0, v1}, Lcom/letv/leui/widget/LeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v1, Lcom/letv/leui/widget/PinnedHeaderListView$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/PinnedHeaderListView$1;-><init>(Lcom/letv/leui/widget/PinnedHeaderListView;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeListView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeListView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeListView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->pinnedHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingLeft()I

    move-result v1

    .local v1, "pLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingTop()I

    move-result v2

    .local v2, "pTop":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "clipHeight":I
    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    add-int v4, v2, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/letv/leui/widget/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .end local v0    # "clipHeight":I
    .end local v1    # "pLeft":I
    .end local v2    # "pTop":I
    :cond_0
    return-void
.end method

.method public getPinnedHeaderMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/PinnedSectionAdapter;

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mAdapter:Lcom/letv/leui/widget/PinnedSectionAdapter;

    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;-><init>(Lcom/letv/leui/widget/PinnedHeaderListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .local v0, "headerOnScrollListener":Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;
    invoke-super {p0, v0}, Lcom/letv/leui/widget/LeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setPinnedHeaderMode(I)V
    .locals 0
    .param p1, "pinnedHeaderMode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView;->mPinnedHeaderMode:I

    return-void
.end method
