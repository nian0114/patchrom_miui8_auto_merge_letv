.class public Lcom/letv/leui/widget/picker/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerColor:I

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private curItem_uncyclic:I

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field isCyclic:Z

.field private isDrawMask:Z

.field private isScrollingPerformed:Z

.field private isVertical:Z

.field private itemHeight:I

.field private itemStrokeWidth:F

.field private itemTextSize:I

.field private itemWidth:I

.field private itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field labelHeight:F

.field private labelOffset:I

.field private labelPaint:Landroid/graphics/Paint;

.field private labelStrokeWidth:F

.field private labelTextSize:I

.field labelWidth:F

.field private normalColor:I

.field private recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

.field public scrollLimit:I

.field private scroller:Lcom/letv/leui/widget/picker/WheelScroller;

.field scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/picker/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private uScrollingOffset:I

.field private viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1f000001
        0xffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/picker/WheelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/picker/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v2, v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    new-instance v5, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v5}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .local v0, "addItems":I
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    goto :goto_0

    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 6
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initResourcesIfNecessary()V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getMeasuredWidth()I

    move-result v0

    .local v0, "width":I
    if-ne p2, v5, :cond_1

    move v0, p1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    add-int/lit8 v2, v0, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method private doScroll(I)V
    .locals 12
    .param p1, "delta"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    .local v3, "itemHeight":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v3

    .local v0, "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .local v6, "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .local v2, "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v3

    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v3, 0x2

    if-gt v8, v9, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_7

    if-lez v2, :cond_7

    if-lez v1, :cond_2

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    if-gez v6, :cond_3

    add-int/2addr v6, v2

    goto :goto_0

    :cond_2
    if-gez v1, :cond_1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    rem-int/2addr v6, v2

    :cond_4
    :goto_1
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .local v5, "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    :goto_2
    mul-int v8, v0, v3

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_5

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->getViewHeight()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    :cond_5
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v3

    .local v7, "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_c

    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .end local v3    # "itemHeight":I
    :cond_6
    :goto_3
    return-void

    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    .restart local v3    # "itemHeight":I
    :cond_7
    if-gez v6, :cond_8

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    if-lt v6, v2, :cond_9

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v6, v2, -0x1

    goto :goto_1

    :cond_9
    if-lez v6, :cond_a

    if-lez v1, :cond_a

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_4

    if-gez v1, :cond_4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .restart local v5    # "offset":I
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_2

    .restart local v7    # "temUScrollingOffset":I
    :cond_c
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v3, :cond_d

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-eq v8, v3, :cond_d

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-ne v8, v7, :cond_6

    :cond_d
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int/2addr v8, v3

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto :goto_3

    .end local v0    # "count":I
    .end local v1    # "fixPos":I
    .end local v2    # "itemCount":I
    .end local v3    # "itemHeight":I
    .end local v5    # "offset":I
    .end local v6    # "pos":I
    .end local v7    # "temUScrollingOffset":I
    :cond_e
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v4

    .local v4, "itemWidth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v4

    .restart local v0    # "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .restart local v6    # "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .restart local v2    # "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v4

    .restart local v1    # "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    if-gt v8, v9, :cond_f

    const/4 v1, 0x0

    :cond_f
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_15

    if-lez v2, :cond_15

    if-lez v1, :cond_11

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v0, 0x1

    :cond_10
    :goto_4
    if-gez v6, :cond_12

    add-int/2addr v6, v2

    goto :goto_4

    :cond_11
    if-gez v1, :cond_10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_12
    rem-int/2addr v6, v2

    :cond_13
    :goto_5
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .restart local v5    # "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_19

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    :goto_6
    mul-int v8, v0, v4

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_14

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    :cond_14
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v4

    .restart local v7    # "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_1a

    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto/16 :goto_3

    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    :cond_15
    if-gez v6, :cond_16

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    const/4 v6, 0x0

    goto :goto_5

    :cond_16
    if-lt v6, v2, :cond_17

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v6, v2, -0x1

    goto :goto_5

    :cond_17
    if-lez v6, :cond_18

    if-lez v1, :cond_18

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_18
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_13

    if-gez v1, :cond_13

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .restart local v5    # "offset":I
    :cond_19
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_6

    .restart local v7    # "temUScrollingOffset":I
    :cond_1a
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v4, :cond_1b

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    if-eq v8, v4, :cond_1b

    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-ne v8, v7, :cond_6

    :cond_1b
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int/2addr v8, v4

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto/16 :goto_3
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .local v6, "center":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .local v8, "offset":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, "mPaint":Landroid/graphics/Paint;
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v7

    .local v7, "childHeight":I
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_0

    const v0, -0xf888889

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sub-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sub-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .local v0, "top":I
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .end local v0    # "top":I
    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v4}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .local v3, "x":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .local v2, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .local v1, "bottom":I
    sub-int v4, v1, v2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v4, v5

    .local v0, "baseline":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v0    # "baseline":I
    .end local v1    # "bottom":I
    .end local v2    # "top":I
    .end local v3    # "x":F
    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .local v0, "lg":Landroid/graphics/LinearGradient;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/LinearGradient;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    int-to-float v11, v1

    const v12, 0xffffff

    const/4 v13, -0x1

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .local v7, "lg2":Landroid/graphics/LinearGradient;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .local v13, "paint2":Landroid/graphics/Paint;
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    int-to-float v10, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v1

    int-to-float v11, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    int-to-float v12, v1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "desired":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    :cond_0
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    mul-int v0, v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    .local v1, "minHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .end local v1    # "minHeight":I
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    goto :goto_0
.end method

.method private getFirstItemCyclic()I
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v0

    .local v0, "first":I
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v3, v4

    .local v1, "firstCyclic":I
    return v1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez p1, :cond_4

    add-int/2addr p1, v0

    goto :goto_1

    :cond_4
    rem-int/2addr p1, v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getViewHeight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    .local v0, "height":I
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/letv/leui/widget/picker/WheelScroller;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;Z)V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    new-instance v0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "%02d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .local v0, "view":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    const/16 v1, 0x16

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getStrokeWidth()F

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    const v1, -0xde5132

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    const v1, -0x434344

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    return-void
.end method

.method private initItem()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .local v0, "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextSize(I)V

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setStrokeWidth(F)V

    .end local v0    # "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    return-void
.end method

.method private initLabelPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const-string v2, "hans-sans-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    int-to-float v1, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .local v0, "scale":F
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .end local v0    # "scale":F
    :cond_2
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080676

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-nez v1, :cond_0

    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layout(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    invoke-virtual {v0, v2, v2, v1, p2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .local v5, "updated":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    const/4 v4, 0x0

    .local v4, "tempFirst":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v10, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    invoke-virtual {v8, v9, v10, v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    move-result v3

    .local v3, "temp":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    if-eq v8, v3, :cond_4

    move v5, v6

    :goto_0
    move v4, v3

    .end local v3    # "temp":I
    :goto_1
    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v8

    if-ne v4, v8, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v8}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v8

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getCount()I

    move-result v9

    if-eq v8, v9, :cond_6

    :cond_0
    move v5, v6

    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v8

    if-le v4, v8, :cond_8

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getLast()I

    move-result v8

    if-gt v4, v8, :cond_8

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v8

    if-lt v1, v8, :cond_2

    invoke-direct {p0, v1, v6}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v8

    if-nez v8, :cond_7

    .end local v1    # "i":I
    :cond_2
    :goto_4
    move v3, v4

    .restart local v3    # "temp":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_9

    add-int v6, v4, v1

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_4
    move v5, v7

    goto :goto_0

    .end local v3    # "temp":I
    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    move v5, v7

    goto :goto_2

    .restart local v1    # "i":I
    :cond_7
    move v4, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v4

    goto :goto_4

    .restart local v1    # "i":I
    .restart local v3    # "temp":I
    :cond_9
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->getFirstItemCyclic()I

    move-result v0

    .local v0, "c":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v6, v6, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    sub-int v6, v3, v6

    add-int/2addr v6, v0

    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    :goto_6
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->requestLayout()V

    return v5

    :cond_a
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    goto :goto_6
.end method

.method private updateView()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCenterTextColot()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    return v0
.end method

.method public getIsVertical()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method public getItemHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getItemWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .local v2, "first":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v4, v4, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    :goto_0
    const/4 v0, 0x1

    .local v0, "count":I
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    return-object v3

    .end local v0    # "count":I
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    goto :goto_0

    .restart local v0    # "count":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .end local v1    # "emptyItems":I
    :cond_5
    :goto_3
    new-instance v3, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v4

    if-eqz v4, :cond_0

    :goto_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v3

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    if-ge v3, v4, :cond_7

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .restart local v1    # "emptyItems":I
    sub-int/2addr v2, v1

    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_3
.end method

.method public getLabelOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    return v0
.end method

.method public getLabelTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    return v0
.end method

.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    return v0
.end method

.method public getScroller()Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method public getScrollingOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getUOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    return v0
.end method

.method public getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelRecycle;->clearAll()V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->removeAllViews()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    new-instance v3, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v3}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    goto :goto_0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(I)V
    .locals 3
    .param p1, "diff"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v1, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v1, p0, p1, p2}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V

    goto :goto_0

    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelClickedListener;->onItemClicked(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingFinished(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingStarted(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->updateView()V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isDrawMask:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawMask(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawLabel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->buildViewForMeasuring()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v4

    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingLeft()I

    move-result v3

    .local v3, "paddingLeft":I
    invoke-direct {p0, v8, v7}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    move-result v9

    add-int/2addr v9, v4

    add-int v6, v9, v3

    .local v6, "width":I
    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v1, v9, :cond_2

    move v0, v2

    .local v0, "height":I
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v9, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelHeight:F

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    int-to-float v9, v6

    iget v10, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v10, v10

    iget v11, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    add-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    .end local v0    # "height":I
    :cond_2
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/picker/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .restart local v0    # "height":I
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .local v0, "distance":I
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .end local v1    # "items":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .end local v0    # "distance":I
    :cond_4
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .restart local v0    # "distance":I
    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int v1, v0, v2

    .restart local v1    # "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto/16 :goto_1

    .end local v1    # "items":I
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .local v0, "distance":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/letv/leui/widget/picker/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    return-void
.end method

.method public setCenterTextColot(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isNotify"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    :cond_2
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v2, :cond_0

    :goto_1
    if-gez p1, :cond_3

    add-int/2addr p1, v0

    goto :goto_1

    :cond_3
    rem-int/2addr p1, v0

    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq p1, v2, :cond_0

    if-eqz p2, :cond_5

    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .local v1, "old":I
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_0

    .end local v1    # "old":I
    :cond_5
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setDrawMask(Z)V
    .locals 0
    .param p1, "isDraw"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isDrawMask:Z

    return-void
.end method

.method public setFirstItemUnCyclic(I)V
    .locals 0
    .param p1, "first"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setIsVertical(Z)V
    .locals 4
    .param p1, "direction"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .local v1, "orientation":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v2, v2, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelScroller;->setOrientation(Z)V

    :cond_2
    return-void

    .end local v1    # "orientation":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v0, v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextViewHeight(I)V

    :cond_0
    return-void
.end method

.method public setItemStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    :cond_0
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    if-lez p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    :cond_1
    return-void
.end method

.method public setLabelOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    return-void
.end method

.method public setLabelStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    :cond_0
    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    if-lez p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    :cond_0
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    if-lez p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    :cond_0
    return-void
.end method

.method public setUOffset(I)V
    .locals 0
    .param p1, "uOffset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    return-void
.end method

.method public setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V
    .locals 6
    .param p1, "viewAdapter"    # Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    instance-of v4, p1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v4, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getOritentaion()Z

    move-result v1

    .local v1, "adapterIsVertical":Z
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eq v4, v1, :cond_2

    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    :cond_2
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v4, :cond_4

    move v2, v3

    .local v2, "orientation":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v4, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    .end local v1    # "adapterIsVertical":Z
    .end local v2    # "orientation":I
    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    return-void

    .restart local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    .restart local v1    # "adapterIsVertical":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    return-void
.end method
