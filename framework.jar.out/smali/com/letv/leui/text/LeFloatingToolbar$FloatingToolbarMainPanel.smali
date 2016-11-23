.class final Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 673
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 674
    iput-object p2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    .line 675
    return-void
.end method

.method static synthetic access$900(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 742
    move-object v0, p1

    .line 743
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 744
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 687
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v11, 0x1

    const/high16 v12, 0x42280000    # 42.0f

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v3, v11

    .line 689
    .local v3, "itemHeight":I
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 690
    .local v8, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 692
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v10

    .line 693
    .local v10, "size":I
    const/4 v0, 0x0

    .line 694
    .local v0, "count":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 695
    invoke-virtual {v8}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 696
    .local v4, "menuItem":Landroid/view/MenuItem;
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    invoke-static {v11, v4}, Lcom/letv/leui/text/LeFloatingToolbar;->access$1000(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    .line 698
    .local v5, "menuItemButton":Landroid/view/View;
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 699
    const v11, 0x108061b

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 708
    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v7, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 713
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 715
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    invoke-direct {p0, v5, v4}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 717
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 718
    add-int/lit8 v11, v10, -0x1

    if-ge v0, v11, :cond_0

    .line 719
    const/4 v11, 0x1

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v2, v11

    .line 720
    .local v2, "dividerHeight":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createMenuDivider(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v11}, Lcom/letv/leui/text/LeFloatingToolbar;->access$1100(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 721
    .local v1, "divider":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 722
    .local v6, "p":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 723
    const v11, 0x1060101

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 724
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 727
    .end local v1    # "divider":Landroid/view/View;
    .end local v2    # "dividerHeight":I
    .end local v6    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 728
    add-int/lit8 v0, v0, 0x1

    .line 729
    goto :goto_0

    .line 700
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    if-nez v0, :cond_2

    .line 701
    const v11, 0x108061c

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 702
    :cond_2
    add-int/lit8 v11, v10, -0x1

    if-ne v0, v11, :cond_3

    .line 703
    const v11, 0x108061d

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 705
    :cond_3
    const v11, 0x108061b

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 730
    .end local v4    # "menuItem":Landroid/view/MenuItem;
    .end local v5    # "menuItemButton":Landroid/view/View;
    :cond_4
    return-object v8
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 735
    return-void
.end method
