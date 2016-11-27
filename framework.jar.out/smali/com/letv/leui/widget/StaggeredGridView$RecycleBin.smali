.class Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p2, "x1"    # Lcom/letv/leui/widget/StaggeredGridView$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v1, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_3

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .local v1, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public getScrapView(IJ)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # J

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .local v1, "result":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .param p1, "viewTypeCount"    # I

    .prologue
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    iput-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method
