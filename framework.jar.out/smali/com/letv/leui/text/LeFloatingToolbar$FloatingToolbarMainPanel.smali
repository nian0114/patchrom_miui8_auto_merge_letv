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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$900(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    move-object v0, p1

    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
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
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "res":Landroid/content/res/Resources;
    const/4 v11, 0x1

    const/high16 v12, 0x42280000    # 42.0f

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v3, v11

    .local v3, "itemHeight":I
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .local v8, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v10

    .local v10, "size":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v8}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .local v4, "menuItem":Landroid/view/MenuItem;
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    invoke-static {v11, v4}, Lcom/letv/leui/text/LeFloatingToolbar;->access$1000(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    .local v5, "menuItemButton":Landroid/view/View;
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const v11, 0x10805fe

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v7, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5, v4}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v11, v10, -0x1

    if-ge v0, v11, :cond_0

    const/4 v11, 0x1

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v2, v11

    .local v2, "dividerHeight":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createMenuDivider(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v11}, Lcom/letv/leui/text/LeFloatingToolbar;->access$1100(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .local v1, "divider":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x1

    invoke-direct {v6, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v6, "p":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x10

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const v12, -0x76746c

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .end local v1    # "divider":Landroid/view/View;
    .end local v2    # "dividerHeight":I
    .end local v6    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    if-nez v0, :cond_2

    const v11, 0x10805ff

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v10, -0x1

    if-ne v0, v11, :cond_3

    const v11, 0x1080600

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const v11, 0x10805fe

    invoke-virtual {v5, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .end local v4    # "menuItem":Landroid/view/MenuItem;
    .end local v5    # "menuItemButton":Landroid/view/View;
    :cond_4
    return-object v8
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method
