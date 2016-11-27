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
    .line 48
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

    .line 149
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 70
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 90
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 103
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 111
    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 112
    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 119
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 425
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 150
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 70
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 90
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 103
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 111
    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 112
    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 119
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 425
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 142
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 63
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 66
    const/4 v0, 0x5

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 69
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 70
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 90
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 103
    new-instance v0, Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelRecycle;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 111
    const/16 v0, 0x10

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 112
    const/16 v0, 0x16

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 119
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$1;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 425
    new-instance v0, Lcom/letv/leui/widget/picker/WheelView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelView$2;-><init>(Lcom/letv/leui/widget/picker/WheelView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 134
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->initData(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/picker/WheelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/picker/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/picker/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 45
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/picker/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1306
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 1307
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1308
    if-eqz p2, :cond_1

    .line 1309
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v2, v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;I)V

    .line 1313
    :goto_0
    const/4 v1, 0x1

    .line 1315
    :cond_0
    return v1

    .line 1311
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private buildViewForMeasuring()V
    .locals 6

    .prologue
    .line 1285
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_1

    .line 1286
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    new-instance v5, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v5}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    .line 1291
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 1292
    .local v0, "addItems":I
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    .line 1293
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    .line 1292
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1288
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    goto :goto_0

    .line 1297
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

    .line 735
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initResourcesIfNecessary()V

    .line 736
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    .line 739
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 741
    .local v0, "width":I
    if-ne p2, v5, :cond_1

    .line 742
    move v0, p1

    .line 752
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    add-int/lit8 v2, v0, 0x0

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/picker/MyLinearLayout;->measure(II)V

    .line 754
    return v0

    .line 744
    :cond_1
    add-int/lit8 v0, v0, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 748
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 749
    move v0, p1

    goto :goto_0
.end method

.method private createItemsLayout()V
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    .line 1272
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 1276
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setWhellView(Lcom/letv/leui/widget/picker/WheelView;)V

    .line 1278
    :cond_0
    return-void

    .line 1275
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

    .line 992
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 994
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 995
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v8, :cond_e

    .line 996
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    .line 997
    .local v3, "itemHeight":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v3

    .line 999
    .local v0, "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .line 1000
    .local v6, "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 1002
    .local v2, "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v3

    .line 1003
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v3, 0x2

    if-gt v8, v9, :cond_0

    .line 1004
    const/4 v1, 0x0

    .line 1006
    :cond_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_7

    if-lez v2, :cond_7

    .line 1007
    if-lez v1, :cond_2

    .line 1008
    add-int/lit8 v6, v6, -0x1

    .line 1009
    add-int/lit8 v0, v0, 0x1

    .line 1015
    :cond_1
    :goto_0
    if-gez v6, :cond_3

    .line 1016
    add-int/2addr v6, v2

    goto :goto_0

    .line 1010
    :cond_2
    if-gez v1, :cond_1

    .line 1011
    add-int/lit8 v6, v6, 0x1

    .line 1012
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1018
    :cond_3
    rem-int/2addr v6, v2

    .line 1036
    :cond_4
    :goto_1
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1037
    .local v5, "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_b

    .line 1038
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1039
    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 1040
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    .line 1045
    :goto_2
    mul-int v8, v0, v3

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1046
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_5

    .line 1047
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->getViewHeight()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1050
    :cond_5
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v3

    .line 1051
    .local v7, "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_c

    .line 1052
    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 1122
    .end local v3    # "itemHeight":I
    :cond_6
    :goto_3
    return-void

    .line 1021
    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    .restart local v3    # "itemHeight":I
    :cond_7
    if-gez v6, :cond_8

    .line 1022
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 1023
    const/4 v6, 0x0

    goto :goto_1

    .line 1024
    :cond_8
    if-lt v6, v2, :cond_9

    .line 1025
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    .line 1026
    add-int/lit8 v6, v2, -0x1

    goto :goto_1

    .line 1027
    :cond_9
    if-lez v6, :cond_a

    if-lez v1, :cond_a

    .line 1028
    add-int/lit8 v6, v6, -0x1

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1030
    :cond_a
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_4

    if-gez v1, :cond_4

    .line 1031
    add-int/lit8 v6, v6, 0x1

    .line 1032
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1042
    .restart local v5    # "offset":I
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_2

    .line 1053
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

    .line 1056
    :cond_d
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int/2addr v8, v3

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto :goto_3

    .line 1060
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

    .line 1061
    .local v4, "itemWidth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    div-int v0, v8, v4

    .line 1063
    .restart local v0    # "count":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int v6, v8, v0

    .line 1064
    .restart local v6    # "pos":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v8}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 1066
    .restart local v2    # "itemCount":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    rem-int v1, v8, v4

    .line 1067
    .restart local v1    # "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    div-int/lit8 v9, v4, 0x2

    if-gt v8, v9, :cond_f

    .line 1068
    const/4 v1, 0x0

    .line 1070
    :cond_f
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v8, :cond_15

    if-lez v2, :cond_15

    .line 1071
    if-lez v1, :cond_11

    .line 1072
    add-int/lit8 v6, v6, -0x1

    .line 1073
    add-int/lit8 v0, v0, 0x1

    .line 1079
    :cond_10
    :goto_4
    if-gez v6, :cond_12

    .line 1080
    add-int/2addr v6, v2

    goto :goto_4

    .line 1074
    :cond_11
    if-gez v1, :cond_10

    .line 1075
    add-int/lit8 v6, v6, 0x1

    .line 1076
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1082
    :cond_12
    rem-int/2addr v6, v2

    .line 1100
    :cond_13
    :goto_5
    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1101
    .restart local v5    # "offset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq v6, v8, :cond_19

    .line 1102
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1103
    invoke-virtual {p0, v6, v11}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(I)V

    .line 1109
    :goto_6
    mul-int v8, v0, v4

    sub-int v8, v5, v8

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1110
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_14

    .line 1111
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    rem-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 1114
    :cond_14
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    rem-int v7, v8, v4

    .line 1115
    .restart local v7    # "temUScrollingOffset":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-nez v8, :cond_1a

    .line 1116
    iput v10, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    goto/16 :goto_3

    .line 1085
    .end local v5    # "offset":I
    .end local v7    # "temUScrollingOffset":I
    :cond_15
    if-gez v6, :cond_16

    .line 1086
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 1087
    const/4 v6, 0x0

    goto :goto_5

    .line 1088
    :cond_16
    if-lt v6, v2, :cond_17

    .line 1089
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    sub-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    .line 1090
    add-int/lit8 v6, v2, -0x1

    goto :goto_5

    .line 1091
    :cond_17
    if-lez v6, :cond_18

    if-lez v1, :cond_18

    .line 1092
    add-int/lit8 v6, v6, -0x1

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1094
    :cond_18
    add-int/lit8 v8, v2, -0x1

    if-ge v6, v8, :cond_13

    if-gez v1, :cond_13

    .line 1095
    add-int/lit8 v6, v6, 0x1

    .line 1096
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1106
    .restart local v5    # "offset":I
    :cond_19
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_6

    .line 1117
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

    .line 1120
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

    .line 931
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 932
    .local v6, "center":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 933
    .local v8, "offset":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 934
    .local v5, "mPaint":Landroid/graphics/Paint;
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 935
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v7

    .line 936
    .local v7, "childHeight":I
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v0, :cond_0

    .line 937
    const v0, -0xf888889

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 938
    sub-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sub-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 939
    add-int v0, v6, v8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v6, v8

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 941
    :cond_0
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 911
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v1, :cond_2

    .line 912
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 913
    const/4 v0, 0x0

    .line 914
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

    .line 915
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 916
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 918
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 924
    .end local v0    # "top":I
    :cond_1
    :goto_0
    return-void

    .line 920
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 861
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 862
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v4}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 863
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 864
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v1, v4, v5

    .line 865
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

    .line 866
    .local v0, "baseline":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    iget v5, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 868
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
    .line 893
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    const v6, 0xffffff

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 894
    .local v0, "lg":Landroid/graphics/LinearGradient;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 895
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 896
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/high16 v5, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 898
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

    .line 900
    .local v7, "lg2":Landroid/graphics/LinearGradient;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 901
    .local v13, "paint2":Landroid/graphics/Paint;
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 902
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

    .line 904
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 875
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 876
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 877
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 878
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 879
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "desired":I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 676
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

    .line 679
    :cond_0
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_1

    .line 680
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    mul-int v0, v2, v3

    .line 683
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 684
    .local v1, "minHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 682
    .end local v1    # "minHeight":I
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    goto :goto_0
.end method

.method private getFirstItemCyclic()I
    .locals 5

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .line 1197
    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v0

    .line 1198
    .local v0, "first":I
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    sub-int v3, v0, v3

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int v1, v3, v4

    .line 1199
    .local v1, "firstCyclic":I
    return v1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1340
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1341
    :cond_0
    const/4 v1, 0x0

    .line 1356
    :goto_0
    return-object v1

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v1}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 1345
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1349
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_3

    .line 1350
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1352
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 1353
    add-int/2addr p1, v0

    goto :goto_1

    .line 1355
    :cond_4
    rem-int/2addr p1, v0

    .line 1356
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
    .line 1125
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    .line 1126
    .local v0, "height":I
    if-nez v0, :cond_0

    .line 1127
    const/4 v0, 0x1

    .line 1129
    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    new-instance v1, Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/letv/leui/widget/picker/WheelScroller;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;Z)V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    .line 167
    new-instance v0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "%02d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 170
    .local v0, "view":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    const/16 v1, 0x16

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 171
    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getStrokeWidth()F

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    .line 176
    const v1, -0xde5132

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 177
    const v1, -0x434344

    iput v1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    .line 178
    return-void
.end method

.method private initItem()V
    .locals 3

    .prologue
    .line 758
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v1, :cond_1

    .line 759
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 760
    .local v0, "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    if-lez v1, :cond_0

    .line 761
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextSize(I)V

    .line 762
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 763
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setStrokeWidth(F)V

    .line 765
    .end local v0    # "textAdapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    return-void
.end method

.method private initLabelPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 768
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 769
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    .line 770
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const-string v2, "hans-sans-light"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 774
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 776
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    if-lez v1, :cond_2

    .line 780
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    int-to-float v1, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 782
    .local v0, "scale":F
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 783
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 785
    .end local v0    # "scale":F
    :cond_2
    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080676

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 658
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 662
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/letv/leui/widget/picker/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 664
    :cond_2
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1326
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v1, v1, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_1

    .line 1329
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

    .line 836
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    invoke-virtual {v0, v2, v2, v1, p2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->layout(IIII)V

    .line 837
    return-void
.end method

.method private rebuildItems()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1212
    const/4 v5, 0x0

    .line 1213
    .local v5, "updated":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemsRange()Lcom/letv/leui/widget/picker/ItemsRange;

    move-result-object v2

    .line 1214
    .local v2, "range":Lcom/letv/leui/widget/picker/ItemsRange;
    const/4 v4, 0x0

    .line 1215
    .local v4, "tempFirst":I
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v8, :cond_5

    .line 1216
    iget-object v8, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    iget v10, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    invoke-virtual {v8, v9, v10, v2}, Lcom/letv/leui/widget/picker/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/letv/leui/widget/picker/ItemsRange;)I

    move-result v3

    .line 1217
    .local v3, "temp":I
    iget v8, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    if-eq v8, v3, :cond_4

    move v5, v6

    .line 1218
    :goto_0
    move v4, v3

    .line 1224
    .end local v3    # "temp":I
    :goto_1
    if-nez v5, :cond_1

    .line 1225
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

    .line 1228
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v8

    if-le v4, v8, :cond_8

    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getLast()I

    move-result v8

    if-gt v4, v8, :cond_8

    .line 1229
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 1230
    invoke-direct {p0, v1, v6}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1239
    .end local v1    # "i":I
    :cond_2
    :goto_4
    move v3, v4

    .line 1240
    .restart local v3    # "temp":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_5
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_9

    .line 1241
    add-int v6, v4, v1

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/picker/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 1242
    add-int/lit8 v3, v3, 0x1

    .line 1240
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1    # "i":I
    :cond_4
    move v5, v7

    .line 1217
    goto :goto_0

    .line 1220
    .end local v3    # "temp":I
    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->createItemsLayout()V

    .line 1221
    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    move v5, v7

    .line 1225
    goto :goto_2

    .line 1233
    .restart local v1    # "i":I
    :cond_7
    move v4, v1

    .line 1229
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1236
    .end local v1    # "i":I
    :cond_8
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v4

    goto :goto_4

    .line 1246
    .restart local v1    # "i":I
    .restart local v3    # "temp":I
    :cond_9
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->getFirstItemCyclic()I

    move-result v0

    .line 1247
    .local v0, "c":I
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v6, v6, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v6, :cond_a

    .line 1248
    invoke-virtual {v2}, Lcom/letv/leui/widget/picker/ItemsRange;->getFirst()I

    move-result v6

    sub-int v6, v3, v6

    add-int/2addr v6, v0

    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    .line 1251
    :goto_6
    iget-object v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v6}, Lcom/letv/leui/widget/picker/MyLinearLayout;->requestLayout()V

    .line 1252
    return v5

    .line 1250
    :cond_a
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->firstItem:I

    goto :goto_6
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    .line 1261
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    .line 1263
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelChangedListener;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public addClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public addScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public getCenterTextColot()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    return v0
.end method

.method public getIsVertical()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    return v0
.end method

.method public getItemHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 698
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 699
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    .line 708
    :goto_0
    return v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 703
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

    .line 705
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemHeight:I

    goto :goto_0

    .line 708
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
    .line 354
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getItemWidth()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 717
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    if-eqz v0, :cond_0

    .line 718
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 725
    :goto_0
    return v0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    .line 723
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemWidth:I

    goto :goto_0

    .line 725
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

    .line 1147
    const/4 v2, 0x0

    .line 1148
    .local v2, "first":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v4, v4, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v4, :cond_1

    .line 1149
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1152
    :goto_0
    const/4 v0, 0x1

    .line 1153
    .local v0, "count":I
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v4, :cond_6

    .line 1154
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    if-nez v4, :cond_2

    .line 1192
    :cond_0
    :goto_1
    return-object v3

    .line 1151
    .end local v0    # "count":I
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    goto :goto_0

    .line 1157
    .restart local v0    # "count":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1158
    add-int/lit8 v2, v2, -0x1

    .line 1159
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1162
    :cond_3
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_5

    .line 1163
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_4

    .line 1164
    add-int/lit8 v2, v2, -0x1

    .line 1166
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1168
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1169
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 1170
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 1192
    .end local v1    # "emptyItems":I
    :cond_5
    :goto_3
    new-instance v3, Lcom/letv/leui/widget/picker/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/letv/leui/widget/picker/ItemsRange;-><init>(II)V

    goto :goto_1

    .line 1173
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1176
    :goto_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v3

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    if-ge v3, v4, :cond_7

    .line 1177
    add-int/lit8 v2, v2, -0x1

    .line 1178
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 1181
    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_5

    .line 1182
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    if-lez v3, :cond_8

    .line 1183
    add-int/lit8 v2, v2, -0x1

    .line 1185
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 1187
    iget v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 1188
    .restart local v1    # "emptyItems":I
    sub-int/2addr v2, v1

    .line 1189
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
    .line 406
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    return v0
.end method

.method public getLabelTextSize()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    return v0
.end method

.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalTextColor()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    return v0
.end method

.method public getScroller()Lcom/letv/leui/widget/picker/WheelScroller;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    return-object v0
.end method

.method public getScrollingOffset()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    return v0
.end method

.method public getUOffset()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    return v0
.end method

.method public getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 4
    .param p1, "clearCaches"    # Z

    .prologue
    .line 635
    if-eqz p1, :cond_2

    .line 636
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->recycle:Lcom/letv/leui/widget/picker/WheelRecycle;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelRecycle;->clearAll()V

    .line 637
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/MyLinearLayout;->removeAllViews()V

    .line 640
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 646
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 647
    return-void

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v0, :cond_1

    .line 643
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
    .line 618
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(I)V
    .locals 3
    .param p1, "diff"    # I

    .prologue
    .line 493
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

    .line 494
    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v1, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .line 496
    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 487
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

    .line 488
    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    invoke-virtual {v1, p0, p1, p2}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;->onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V

    goto :goto_0

    .line 490
    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 552
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

    .line 553
    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    invoke-interface {v1, p0, p1}, Lcom/letv/leui/widget/picker/OnWheelClickedListener;->onItemClicked(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .line 555
    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelClickedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 527
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

    .line 528
    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingFinished(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .line 530
    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 518
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

    .line 519
    .local v1, "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/letv/leui/widget/picker/OnWheelScrollListener;->onScrollingStarted(Lcom/letv/leui/widget/picker/WheelView;)V

    goto :goto_0

    .line 521
    .end local v1    # "listener":Lcom/letv/leui/widget/picker/OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 841
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 842
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 843
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->updateView()V

    .line 844
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 845
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 850
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelView;->isDrawMask:Z

    if-eqz v0, :cond_1

    .line 851
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawMask(Landroid/graphics/Canvas;)V

    .line 855
    :cond_1
    return-void

    .line 847
    :cond_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 848
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
    .line 827
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->layout(II)V

    .line 828
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 789
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 790
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 791
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 792
    .local v8, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 794
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->buildViewForMeasuring()V

    .line 796
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingRight()I

    move-result v4

    .line 797
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getPaddingLeft()I

    move-result v3

    .line 798
    .local v3, "paddingLeft":I
    invoke-direct {p0, v8, v7}, Lcom/letv/leui/widget/picker/WheelView;->calculateLayoutWidth(II)I

    move-result v9

    add-int/2addr v9, v4

    add-int v6, v9, v3

    .line 799
    .local v6, "width":I
    iput v6, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsWidth:I

    .line 802
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v1, v9, :cond_2

    .line 803
    move v0, v2

    .line 812
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

    .line 813
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 814
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 815
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelHeight:F

    .line 816
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    .line 817
    int-to-float v9, v6

    iget v10, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    int-to-float v10, v10

    iget v11, p0, Lcom/letv/leui/widget/picker/WheelView;->labelWidth:F

    add-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 819
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-boolean v9, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v9, :cond_3

    .line 820
    add-int/lit8 v6, v6, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    .line 823
    :goto_1
    return-void

    .line 805
    .end local v0    # "height":I
    :cond_2
    iget-object v9, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/picker/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 807
    .restart local v0    # "height":I
    const/high16 v9, -0x80000000

    if-ne v1, v9, :cond_0

    .line 808
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 822
    :cond_3
    invoke-virtual {p0, v6, v0}, Lcom/letv/leui/widget/picker/WheelView;->setMeasuredDimension(II)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 945
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v2

    .line 949
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 983
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 951
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 952
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 957
    :pswitch_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_4

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 959
    .local v0, "distance":I
    if-lez v0, :cond_3

    .line 960
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 964
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 965
    .local v1, "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 966
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 962
    .end local v1    # "items":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_2

    .line 968
    .end local v0    # "distance":I
    :cond_4
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-nez v2, :cond_2

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 970
    .restart local v0    # "distance":I
    if-lez v0, :cond_5

    .line 971
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 975
    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int v1, v0, v2

    .line 976
    .restart local v1    # "items":I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyClickListenersAboutClick(I)V

    goto/16 :goto_1

    .line 973
    .end local v1    # "items":I
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_3

    .line 949
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
    .line 478
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public removeClickingListener(Lcom/letv/leui/widget/picker/OnWheelClickedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelClickedListener;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 546
    return-void
.end method

.method public removeScrollingListener(Lcom/letv/leui/widget/picker/OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/picker/OnWheelScrollListener;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method public scroll(II)V
    .locals 3
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 1139
    .local v0, "distance":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/letv/leui/widget/picker/WheelScroller;->scroll(II)V

    .line 1140
    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 368
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 369
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 370
    return-void
.end method

.method public setCenterTextColot(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->centerColor:I

    .line 374
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 375
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 376
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(IZ)V

    .line 611
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isNotify"    # Z

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 578
    .local v0, "itemCount":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 579
    :cond_2
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    if-eqz v2, :cond_0

    .line 580
    :goto_1
    if-gez p1, :cond_3

    .line 581
    add-int/2addr p1, v0

    goto :goto_1

    .line 583
    :cond_3
    rem-int/2addr p1, v0

    .line 589
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    if-eq p1, v2, :cond_0

    .line 590
    if-eqz p2, :cond_5

    .line 591
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 592
    iget v1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 593
    .local v1, "old":I
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 594
    iget v2, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->notifyChangingListeners(II)V

    .line 595
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_0

    .line 597
    .end local v1    # "old":I
    :cond_5
    iput v3, p0, Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I

    .line 598
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->currentItem:I

    .line 599
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 1
    .param p1, "isCyclic"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isCyclic:Z

    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 628
    return-void
.end method

.method public setDrawMask(Z)V
    .locals 0
    .param p1, "isDraw"    # Z

    .prologue
    .line 884
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isDrawMask:Z

    .line 885
    return-void
.end method

.method public setFirstItemUnCyclic(I)V
    .locals 0
    .param p1, "first"    # I

    .prologue
    .line 1203
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->curItem_uncyclic:I

    .line 1204
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    return-void
.end method

.method public setIsVertical(Z)V
    .locals 4
    .param p1, "direction"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    .line 182
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 183
    .local v1, "orientation":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v2, v2, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v2, :cond_1

    .line 186
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 187
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 189
    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelScroller;->setOrientation(Z)V

    .line 192
    :cond_2
    return-void

    .line 182
    .end local v1    # "orientation":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setItemHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    instance-of v0, v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setTextViewHeight(I)V

    .line 691
    :cond_0
    return-void
.end method

.method public setItemStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 326
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 327
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemStrokeWidth:F

    .line 328
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 330
    :cond_0
    return-void
.end method

.method public setItemTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 340
    if-lez p1, :cond_0

    .line 341
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 342
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 344
    :cond_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->label:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 304
    :cond_1
    return-void
.end method

.method public setLabelOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelOffset:I

    .line 400
    return-void
.end method

.method public setLabelStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 333
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 334
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelStrokeWidth:F

    .line 335
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 337
    :cond_0
    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 347
    if-lez p1, :cond_0

    .line 348
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    .line 349
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 351
    :cond_0
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->normalColor:I

    .line 363
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 364
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 315
    if-lez p1, :cond_0

    .line 316
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->labelTextSize:I

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->itemTextSize:I

    .line 317
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initLabelPaint()V

    .line 318
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 320
    :cond_0
    return-void
.end method

.method public setUOffset(I)V
    .locals 0
    .param p1, "uOffset"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->uScrollingOffset:I

    .line 159
    return-void
.end method

.method public setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V
    .locals 6
    .param p1, "viewAdapter"    # Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    .prologue
    const/4 v3, 0x1

    .line 444
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 447
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    .line 448
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->viewAdapter:Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 452
    :cond_1
    instance-of v4, p1, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    if-eqz v4, :cond_3

    move-object v0, p1

    .line 453
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;

    .line 454
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getOritentaion()Z

    move-result v1

    .line 455
    .local v1, "adapterIsVertical":Z
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eq v4, v1, :cond_2

    .line 456
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 457
    :cond_2
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z

    if-eqz v4, :cond_4

    move v2, v3

    .line 458
    .local v2, "orientation":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    if-eqz v4, :cond_3

    .line 459
    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView;->itemsLayout:Lcom/letv/leui/widget/picker/MyLinearLayout;

    invoke-virtual {v4, v2}, Lcom/letv/leui/widget/picker/MyLinearLayout;->setOrientation(I)V

    .line 461
    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
    .end local v1    # "adapterIsVertical":Z
    .end local v2    # "orientation":I
    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelView;->initItem()V

    .line 462
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 463
    return-void

    .line 457
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
    .line 291
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelView;->visibleItems:I

    .line 292
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    .line 1365
    return-void
.end method
