.class Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeMenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeMenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    iput-object p2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v5}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$400(Lcom/letv/leui/widget/LeMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    invoke-static {}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$200()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v6}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$400(Lcom/letv/leui/widget/LeMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    iput v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$100(Lcom/letv/leui/widget/LeMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    invoke-static {}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$200()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    return v1

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    invoke-static {}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$200()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getVisibleItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$100(Lcom/letv/leui/widget/LeMenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    invoke-static {}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$200()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getNonActionItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v1

    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->HIDDEN_REFLECTOR:Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;
    invoke-static {}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$200()Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeMenuPopupHelper$HiddenMethodReflector;->getVisibleItems(Lcom/android/internal/view/menu/MenuBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    # getter for: Lcom/letv/leui/widget/LeMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/letv/leui/widget/LeMenuPopupHelper;->access$300(Lcom/letv/leui/widget/LeMenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109011d

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->this$0:Lcom/letv/leui/widget/LeMenuPopupHelper;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LeMenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeMenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
