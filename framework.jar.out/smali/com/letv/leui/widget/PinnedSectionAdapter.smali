.class public abstract Lcom/letv/leui/widget/PinnedSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "PinnedSectionAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mCount:I

.field private numberOfCellsSection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderItem(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowItem(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderItemViewType(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowItemViewType(II)I

    move-result v1

    goto :goto_0
.end method

.method protected getRowInSection(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v1

    .local v1, "section":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v2

    sub-int v0, p1, v2

    .local v0, "row":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .end local v0    # "row":I
    :cond_0
    return v0
.end method

.method public abstract getRowItem(II)Ljava/lang/Object;
.end method

.method public getRowItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getRowView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getRowViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected getSection(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .local v0, "section":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "section":I
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getSectionHeaderItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionHeaderItemViewType(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .local v0, "section":I
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasSectionHeaderView(I)Z
    .locals 1
    .param p1, "section"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSectionHeader(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v0

    .local v0, "section":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->sectionCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsBeforeSection(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->mCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method protected numberOfCellsBeforeSection(I)I
    .locals 5
    .param p1, "section"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfSections()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfRows(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfCellsSection:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public abstract numberOfRows(I)I
.end method

.method public abstract numberOfSections()I
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/letv/leui/widget/PinnedSectionAdapter;->onRowItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V

    return-void
.end method

.method public onRowItemClick(Landroid/widget/AdapterView;Landroid/view/View;IIJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "section"    # I
    .param p4, "row"    # I
    .param p5, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IIJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
