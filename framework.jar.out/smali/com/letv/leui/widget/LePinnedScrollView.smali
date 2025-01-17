.class public Lcom/letv/leui/widget/LePinnedScrollView;
.super Landroid/widget/ScrollView;
.source "LePinnedScrollView.java"


# static fields
.field private static final DEFAULT_SHADOW_HEIGHT:I = 0xa

.field public static final FLAG_HASTRANSPARANCY:Ljava/lang/String; = "-hastransparancy"

.field public static final FLAG_NONCONSTANT:Ljava/lang/String; = "-nonconstant"

.field public static final STICKY_TAG:Ljava/lang/String; = "pinned"


# instance fields
.field private clipToPaddingHasBeenSet:Z

.field private clippingToPadding:Z

.field private currentlyStickingView:Landroid/view/View;

.field private hasNotDoneActionDown:Z

.field private final invalidateRunnable:Ljava/lang/Runnable;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private redirectTouchesToStickyView:Z

.field private stickyViewLeftOffset:I

.field private stickyViewTopOffset:F

.field private stickyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LePinnedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LePinnedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Lcom/letv/leui/widget/LePinnedScrollView$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/LePinnedScrollView$1;-><init>(Lcom/letv/leui/widget/LePinnedScrollView;)V

    iput-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    iput-boolean v8, p0, Lcom/letv/leui/widget/LePinnedScrollView;->hasNotDoneActionDown:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->setup()V

    sget-object v4, Lcom/android/internal/R$styleable;->LePinnedScrollView:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v1, v4

    .local v1, "defaultShadowHeightInPix":I
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowHeight:I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .local v3, "shadowDrawableRes":I
    if-eq v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePinnedScrollView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePinnedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePinnedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->getBottomForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePinnedScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LePinnedScrollView;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePinnedScrollView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    return v0
.end method

.method private doTheStickyThing()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .local v3, "viewThatShouldStick":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "approachingView":Landroid/view/View;
    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    iget-boolean v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    add-int v4, v7, v5

    .local v4, "viewTop":I
    if-gtz v4, :cond_4

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    iget-boolean v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_3

    move v5, v6

    :goto_2
    add-int/2addr v5, v7

    if-le v4, v5, :cond_0

    :cond_1
    move-object v3, v2

    goto :goto_0

    .end local v4    # "viewTop":I
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_1

    .restart local v4    # "viewTop":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    iget-boolean v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    add-int/2addr v5, v7

    if-ge v4, v5, :cond_0

    :cond_5
    move-object v0, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_3

    .end local v2    # "v":Landroid/view/View;
    .end local v4    # "viewTop":I
    :cond_7
    if-eqz v3, :cond_c

    if-nez v0, :cond_a

    const/4 v5, 0x0

    :goto_4
    iput v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eq v3, v5, :cond_9

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->stopStickingCurrentlyStickingView()V

    :cond_8
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewLeftOffset:I

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->startStickingView(Landroid/view/View;)V

    :cond_9
    :goto_5
    return-void

    :cond_a
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v7

    sub-int v7, v5, v7

    iget-boolean v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v5, :cond_b

    move v5, v6

    :goto_6
    add-int/2addr v5, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingTop()I

    move-result v5

    goto :goto_6

    :cond_c
    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->stopStickingCurrentlyStickingView()V

    goto :goto_5
.end method

.method private findStickyViews(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "vg":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getStringTagForView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "pinned"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "tag":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "pinned"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "tag":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getBottomForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LePinnedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getLeftForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .local v0, "left":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LePinnedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getRightForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .local v0, "right":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LePinnedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private getStringTagForView(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .local v0, "tagObject":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTopForViewRelativeOnlyChild(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .local v0, "top":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LePinnedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .restart local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hideView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private notifyHierarchyChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->stopStickingCurrentlyStickingView()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->doTheStickyThing()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->invalidate()V

    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startStickingView(Landroid/view/View;)V
    .locals 2
    .param p1, "viewThatShouldStick"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->hideView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-nonconstant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private stopStickingCurrentlyStickingView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->showView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->invalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;I)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePinnedScrollView;->findStickyViews(Landroid/view/View;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingLeft()I

    move-result v4

    iget v6, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewLeftOffset:I

    add-int/2addr v4, v6

    int-to-float v6, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    add-float/2addr v7, v4

    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getPaddingTop()I

    move-result v4

    :goto_0
    int-to-float v4, v4

    add-float/2addr v4, v7

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    neg-float v4, v4

    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewLeftOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowHeight:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .local v1, "left":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .local v2, "right":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, "top":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowHeight:I

    add-int v0, v4, v6

    .local v0, "bottom":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_0
    iget-boolean v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    neg-float v4, v4

    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LePinnedScrollView;->showView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LePinnedScrollView;->hideView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    iget-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    add-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    goto :goto_2
.end method

.method public notifyStickyAttributeChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->notifyHierarchyChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clipToPaddingHasBeenSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->notifyHierarchyChanged()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->doTheStickyThing()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->redirectTouchesToStickyView:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LePinnedScrollView;->getTopForViewRelativeOnlyChild(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->hasNotDoneActionDown:Z

    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->hasNotDoneActionDown:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .local v0, "down":Landroid/view/MotionEvent;
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LePinnedScrollView;->hasNotDoneActionDown:Z

    .end local v0    # "down":Landroid/view/MotionEvent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    iput-boolean v5, p0, Lcom/letv/leui/widget/LePinnedScrollView;->hasNotDoneActionDown:Z

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clippingToPadding:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->clipToPaddingHasBeenSet:Z

    return-void
.end method

.method public setShadowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePinnedScrollView;->mShadowHeight:I

    return-void
.end method

.method public setup()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LePinnedScrollView;->stickyViews:Ljava/util/ArrayList;

    return-void
.end method
