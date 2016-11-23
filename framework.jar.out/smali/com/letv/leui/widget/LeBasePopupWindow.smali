.class public Lcom/letv/leui/widget/LeBasePopupWindow;
.super Landroid/widget/PopupWindow;
.source "LeBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;,
        Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LePopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAllowScrollAnchorParent:Z

.field protected mAlwaysVisible:Z

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIsPopupVerticalOffsetSet:Z

.field private mMeasureInAnchorParent:Z

.field private mMeasureInView:Landroid/view/View;

.field private mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

.field private mPopupAnchorView:Landroid/view/View;

.field private mPopupGravity:I

.field protected mPopupHeight:I

.field private mPopupHorizontalOffset:I

.field protected mPopupVerticalOffset:I

.field protected mPopupWidth:I

.field private mScreenLocation:[I

.field mShowDropDownRunnable:Ljava/lang/Runnable;

.field protected mTempPaddingRect:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowFadingDark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    const v1, 0x1010076

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0x1010076

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    .line 36
    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    .line 40
    const/16 v0, 0x51

    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    .line 41
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeBasePopupWindow$1;-><init>(Lcom/letv/leui/widget/LeBasePopupWindow;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 59
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    .line 60
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    .line 64
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    .line 66
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    .line 67
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    .line 114
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContext:Landroid/content/Context;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollAnchorParent(Z)V

    .line 117
    return-void
.end method

.method private calculateGravityOffset(Landroid/view/View;I)[I
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    .line 530
    const/4 v11, 0x2

    new-array v7, v11, [I

    .line 532
    .local v7, "result":[I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 533
    .local v1, "anchorWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 535
    .local v0, "anchorHeight":I
    const/4 v4, 0x0

    .line 536
    .local v4, "isShowOnAnchorTop":Z
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 537
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    aput v12, v7, v11

    .line 544
    :goto_0
    and-int/lit8 v11, p2, 0x70

    const/16 v12, 0x30

    if-ne v11, v12, :cond_5

    .line 545
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v12, v12

    aput v12, v7, v11

    .line 546
    const/4 v4, 0x1

    .line 552
    :goto_1
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 553
    .local v8, "screenLocation":[I
    const/4 v2, 0x0

    .line 554
    .local v2, "changeUpAndDown":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 556
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 557
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    if-eqz v11, :cond_0

    if-eqz p1, :cond_0

    .line 558
    iget-object v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    .line 559
    .local v5, "parentView":Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 561
    iget-boolean v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    if-eqz v11, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 563
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 565
    .local v10, "scrollY":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v0

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 566
    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 570
    .end local v5    # "parentView":Landroid/view/View;
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_0
    const/4 v11, 0x1

    aget v11, v8, v11

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_6

    .line 571
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v7, v11

    .line 572
    const/4 v2, 0x1

    .line 573
    const/4 v4, 0x0

    .line 580
    :cond_1
    :goto_2
    const/4 v11, 0x0

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    .line 581
    const/4 v11, 0x1

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    .line 582
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    .line 584
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    if-eqz v11, :cond_2

    .line 585
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    invoke-interface {v11, v7}, Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;->onModifiedPosition([I)V

    .line 588
    :cond_2
    return-object v7

    .line 538
    .end local v2    # "changeUpAndDown":Z
    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "screenLocation":[I
    :cond_3
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 539
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v12

    sub-int v12, v1, v12

    aput v12, v7, v11

    goto/16 :goto_0

    .line 541
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v7, v11

    goto/16 :goto_0

    .line 548
    :cond_5
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v7, v11

    .line 549
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 574
    .restart local v2    # "changeUpAndDown":Z
    .restart local v3    # "displayFrame":Landroid/graphics/Rect;
    .restart local v8    # "screenLocation":[I
    :cond_6
    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_1

    .line 575
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v12, v12

    aput v12, v7, v11

    .line 576
    const/4 v2, 0x1

    .line 577
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private checkPopupPosition(Landroid/view/View;III)Z
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 491
    .local v1, "anchorHeight":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 492
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int v4, v11, p2

    .line 494
    .local v4, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    move/from16 v0, p4

    invoke-static {v0, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    and-int/lit8 v3, v11, 0x7

    .line 496
    .local v3, "hgrav":I
    const/4 v11, 0x5

    if-ne v3, v11, :cond_0

    .line 498
    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v4, v11

    .line 501
    :cond_0
    const/4 v5, 0x0

    .line 502
    .local v5, "onTop":Z
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 503
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 504
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 506
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v11, v1

    add-int v8, v11, p3

    .line 508
    .local v8, "screenY":I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 509
    .local v7, "root":Landroid/view/View;
    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    add-int/2addr v11, v8

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_1

    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    if-lez v11, :cond_3

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isAlloowScrollAnchorParent()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 513
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 514
    .local v10, "scrollY":I
    new-instance v6, Landroid/graphics/Rect;

    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    add-int/2addr v11, v9

    add-int v11, v11, p2

    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    add-int/2addr v12, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p3

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 516
    .local v6, "r":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 520
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_2
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 522
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v11, v11, p3

    iget-object v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int v12, v12, p3

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_4

    const/4 v5, 0x1

    .line 524
    :goto_0
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    .line 526
    :cond_3
    return v5

    .line 522
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private measureNormalView(Landroid/view/ViewGroup;Landroid/graphics/Point;II)V
    .locals 11
    .param p1, "dropDownView"    # Landroid/view/ViewGroup;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "popupWidth"    # I
    .param p4, "popupHeight"    # I

    .prologue
    .line 678
    const/4 v5, 0x0

    .line 679
    .local v5, "paddingX":I
    const/4 v6, 0x0

    .line 680
    .local v6, "paddingY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 681
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 682
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 683
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v5, v8, v9

    .line 684
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    .line 689
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v8, :cond_0

    .line 690
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iput v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    .line 697
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getInputMethodMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v3, 0x1

    .line 698
    .local v3, "ignoreBottomDecorations":Z
    :goto_1
    sget-object v8, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    invoke-virtual {v8, p0, v9, v10, v3}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v4

    .line 701
    .local v4, "maxHeight":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v8, :cond_1

    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 703
    :cond_1
    add-int v8, v4, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    .line 745
    :goto_2
    return-void

    .line 693
    .end local v3    # "ignoreBottomDecorations":Z
    .end local v4    # "maxHeight":I
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 697
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 707
    .restart local v3    # "ignoreBottomDecorations":Z
    .restart local v4    # "maxHeight":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 709
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_5

    .line 710
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 715
    .restart local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    packed-switch p3, :pswitch_data_0

    .line 723
    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 729
    .local v2, "childWidthSpec":I
    :goto_3
    packed-switch p4, :pswitch_data_1

    .line 737
    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 741
    .local v1, "childHeightSpec":I
    :goto_4
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 743
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, p2, Landroid/graphics/Point;->x:I

    .line 744
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 717
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    :pswitch_0
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 718
    .restart local v2    # "childWidthSpec":I
    goto :goto_3

    .line 720
    .end local v2    # "childWidthSpec":I
    :pswitch_1
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 721
    .restart local v2    # "childWidthSpec":I
    goto :goto_3

    .line 731
    :pswitch_2
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 732
    .restart local v1    # "childHeightSpec":I
    goto :goto_4

    .line 734
    .end local v1    # "childHeightSpec":I
    :pswitch_3
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 735
    .restart local v1    # "childHeightSpec":I
    goto :goto_4

    .line 715
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 729
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    sget-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {v0, p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    .line 365
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 322
    return-void
.end method


# virtual methods
.method protected buildDropDown()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 664
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 665
    .local v1, "point":Landroid/graphics/Point;
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 674
    :goto_0
    return-object v1

    .line 669
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 673
    .local v0, "dropDownView":Landroid/view/ViewGroup;
    iget v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->measureNormalView(Landroid/view/ViewGroup;Landroid/graphics/Point;II)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 615
    return-void
.end method

.method protected getAdjustVerticalOffset()I
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getContainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    return v0
.end method

.method public getMeasureInView()Landroid/view/View;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    return-object v0
.end method

.method public getPopupHeight()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    return v0
.end method

.method public getPopupWidth()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    goto :goto_0
.end method

.method public isAlloowScrollAnchorParent()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    return v0
.end method

.method public isAlwaysVisible()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasureInAnchorParent()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    return v0
.end method

.method public isWindowFaddingDark()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 627
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 630
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    .line 631
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 635
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 651
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 639
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 640
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 642
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 643
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 645
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 646
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->dismiss()V

    goto :goto_0

    .line 651
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onPopupPositionChange(Z)V
    .locals 0
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    .line 593
    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    .line 481
    return-void
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public setAllowScrollAnchorParent(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    .line 340
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    invoke-static {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    .line 341
    return-void
.end method

.method public setAlwaysVisible(Z)V
    .locals 0
    .param p1, "alwaysVisible"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    .line 159
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    .line 179
    return-void
.end method

.method public setClipToScreenEnabledExt(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setClipToScreenEnabled(Z)V

    .line 124
    return-void
.end method

.method public setContainView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 286
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 287
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "contentView":Landroid/view/View;
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 294
    :cond_0
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 305
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 307
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setPopupWidth(I)V

    .line 311
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 135
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    .line 196
    return-void
.end method

.method public setMeasureInAnchorParent(Z)V
    .locals 0
    .param p1, "measure"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    .line 349
    return-void
.end method

.method public setMeasureInView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    .line 326
    return-void
.end method

.method public setModifiedPositionListener(Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    .line 232
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    .line 228
    return-void
.end method

.method public setPopupHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    .line 268
    return-void
.end method

.method public setPopupWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    .line 250
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    .line 217
    return-void
.end method

.method public setWindowFadingDark(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    .line 357
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->buildDropDown()Landroid/graphics/Point;

    move-result-object v7

    .line 373
    .local v7, "bound":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->y:I

    .line 374
    .local v9, "height":I
    iget v13, v7, Landroid/graphics/Point;->x:I

    .line 375
    .local v13, "width":I
    const/4 v4, 0x0

    .line 376
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 378
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isInputMethodNotNeeded()Z

    move-result v10

    .line 388
    .local v10, "noInputMethod":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 389
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 393
    const/4 v4, -0x1

    .line 400
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 404
    if-eqz v10, :cond_2

    move v5, v9

    .line 406
    :goto_1
    if-eqz v10, :cond_4

    .line 407
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    .line 421
    :goto_3
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .line 426
    .local v8, "gravityOffset":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->update(Landroid/view/View;IIII)V

    .line 477
    :goto_5
    return-void

    .line 394
    .end local v8    # "gravityOffset":[I
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 395
    move v4, v13

    goto :goto_0

    .line 397
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    goto :goto_0

    .line 404
    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .line 407
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 411
    :cond_4
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    :goto_6
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 415
    :cond_6
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 416
    move v5, v9

    goto :goto_3

    .line 418
    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    goto :goto_3

    .line 421
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 432
    :cond_9
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 433
    const/4 v4, -0x1

    .line 442
    :goto_7
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 443
    const/4 v5, -0x1

    .line 452
    :goto_8
    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    .line 457
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .line 458
    .restart local v8    # "gravityOffset":[I
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->checkPopupPosition(Landroid/view/View;III)Z

    .line 468
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    .line 469
    .local v6, "anchor":Landroid/view/View;
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 470
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int v11, v0, v1

    .line 471
    .local v11, "posX":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    add-int v12, v0, v1

    .line 472
    .local v12, "posY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0, v6, v11, v12, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPrevShow(Landroid/view/View;III)V

    .line 473
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget v3, v8, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v3, v3, v14

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v3, v14

    const/4 v14, 0x1

    aget v14, v8, v14

    add-int/2addr v3, v14

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5

    .line 435
    .end local v6    # "anchor":Landroid/view/View;
    .end local v8    # "gravityOffset":[I
    .end local v11    # "posX":I
    .end local v12    # "posY":I
    :cond_a
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    .line 436
    invoke-virtual {p0, v13}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto :goto_7

    .line 438
    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto/16 :goto_7

    .line 445
    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    .line 446
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    .line 448
    :cond_d
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    .line 458
    .restart local v8    # "gravityOffset":[I
    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method
