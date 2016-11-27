.class public final Lcom/letv/leui/text/LeFloatingToolbar;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$1;

    invoke-direct {v0}, Lcom/letv/leui/text/LeFloatingToolbar$1;-><init>()V

    sput-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    sget-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeFloatingToolbar$2;-><init>(Lcom/letv/leui/text/LeFloatingToolbar;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;-><init>(Lcom/letv/leui/text/LeFloatingToolbar;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    invoke-static {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->createMenuDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/text/LeFloatingToolbar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic access$300(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->createArrowEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/letv/leui/text/LeFloatingToolbar;->createArrowExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private static createArrowEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xa6

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createArrowExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xa6

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animation":Landroid/animation/AnimatorSet;
    invoke-static {}, Lcom/letv/leui/animation/LeBounceInterpolator;->getDefaultInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    .local v2, "it":Landroid/view/animation/Interpolator;
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "scaleXAnimator":Landroid/animation/Animator;
    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "scaleYAnimator":Landroid/animation/Animator;
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xf0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "fadeAnimator":Landroid/animation/Animator;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    aput-object v4, v5, v8

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f6b851f    # 0.92f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createMenuDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "menuItemButton":Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .local v1, "paddingLeft":I
    move v2, v1

    .local v2, "paddingRight":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1, v7, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/letv/leui/text/LeFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/letv/leui/text/LeFloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 8
    .param p1, "suggestedWidth"    # I

    .prologue
    iget v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    iput p1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->dismiss()V

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar;->show()Lcom/letv/leui/text/LeFloatingToolbar;

    :cond_0
    return-object p0
.end method
