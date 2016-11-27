.class public abstract Lcom/letv/leui/widget/DragSortBaseGridAdapter;
.super Lcom/letv/leui/widget/DragSortAbstractGridAdapter;
.source "DragSortBaseGridAdapter.java"


# instance fields
.field private mColumnCount:I

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "columnCount"    # I

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "columnCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortAbstractGridAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->init(Ljava/util/List;)V

    return-void
.end method

.method private init(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addAllStableId(Ljava/util/List;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addStableId(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addStableId(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->addAllStableId(Ljava/util/List;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public canReorder(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->clearStableIdMap()V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->removeStableID(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reorderItems(II)V
    .locals 1
    .param p1, "originalPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/letv/leui/widget/DragSortGridUtils;->reorder(Ljava/util/ArrayList;II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public set(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->clear()V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->init(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->mColumnCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortBaseGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
