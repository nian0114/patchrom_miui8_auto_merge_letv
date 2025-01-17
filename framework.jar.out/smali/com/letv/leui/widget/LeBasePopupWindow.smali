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
    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const v1, 0x1010076

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010076

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/16 v0, 0x51

    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeBasePopupWindow$1;-><init>(Lcom/letv/leui/widget/LeBasePopupWindow;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollAnchorParent(Z)V

    return-void
.end method

.method private calculateGravityOffset(Landroid/view/View;I)[I
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    const/4 v11, 0x2

    new-array v7, v11, [I

    .local v7, "result":[I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "anchorWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, "anchorHeight":I
    const/4 v4, 0x0

    .local v4, "isShowOnAnchorTop":Z
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v12

    sub-int/2addr v12, v1

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    aput v12, v7, v11

    :goto_0
    and-int/lit8 v11, p2, 0x70

    const/16 v12, 0x30

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v12, v12

    aput v12, v7, v11

    const/4 v4, 0x1

    :goto_1
    const/4 v11, 0x2

    new-array v8, v11, [I

    .local v8, "screenLocation":[I
    const/4 v2, 0x0

    .local v2, "changeUpAndDown":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    if-eqz v11, :cond_0

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    .local v5, "parentView":Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-boolean v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

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

    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

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

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v7, v11

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_1
    :goto_2
    const/4 v11, 0x0

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    const/4 v11, 0x1

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    invoke-interface {v11, v7}, Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;->onModifiedPosition([I)V

    :cond_2
    return-object v7

    .end local v2    # "changeUpAndDown":Z
    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "screenLocation":[I
    :cond_3
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v12

    sub-int v12, v1, v12

    aput v12, v7, v11

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v7, v11

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v7, v11

    const/4 v4, 0x0

    goto/16 :goto_1

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

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v13

    sub-int/2addr v12, v13

    neg-int v12, v12

    aput v12, v7, v11

    const/4 v2, 0x1

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
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "anchorHeight":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int v4, v11, p2

    .local v4, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    move/from16 v0, p4

    invoke-static {v0, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    and-int/lit8 v3, v11, 0x7

    .local v3, "hgrav":I
    const/4 v11, 0x5

    if-ne v3, v11, :cond_0

    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v4, v11

    :cond_0
    const/4 v5, 0x0

    .local v5, "onTop":Z
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v11, v1

    add-int v8, v11, p3

    .local v8, "screenY":I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

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

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isAlloowScrollAnchorParent()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

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

    .local v6, "r":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_2
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

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

    :goto_0
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    :cond_3
    return v5

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
    const/4 v5, 0x0

    .local v5, "paddingX":I
    const/4 v6, 0x0

    .local v6, "paddingY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v5, v8, v9

    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iput v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getInputMethodMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v3, 0x1

    .local v3, "ignoreBottomDecorations":Z
    :goto_1
    sget-object v8, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    invoke-virtual {v8, p0, v9, v10, v3}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v4

    .local v4, "maxHeight":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v8, :cond_1

    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    :cond_1
    add-int v8, v4, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    :goto_2
    return-void

    .end local v3    # "ignoreBottomDecorations":Z
    .end local v4    # "maxHeight":I
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3    # "ignoreBottomDecorations":Z
    .restart local v4    # "maxHeight":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_5

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    packed-switch p3, :pswitch_data_0

    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthSpec":I
    :goto_3
    packed-switch p4, :pswitch_data_1

    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childHeightSpec":I
    :goto_4
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    goto :goto_2

    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    :pswitch_0
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childWidthSpec":I
    goto :goto_3

    .end local v2    # "childWidthSpec":I
    :pswitch_1
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childWidthSpec":I
    goto :goto_3

    :pswitch_2
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightSpec":I
    goto :goto_4

    .end local v1    # "childHeightSpec":I
    :pswitch_3
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightSpec":I
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

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
    sget-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {v0, p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void
.end method


# virtual methods
.method protected buildDropDown()Landroid/graphics/Point;
    .locals 4

    .prologue
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "point":Landroid/graphics/Point;
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "dropDownView":Landroid/view/ViewGroup;
    iget v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->measureNormalView(Landroid/view/ViewGroup;Landroid/graphics/Point;II)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected getAdjustVerticalOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getContainView()Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    return v0
.end method

.method public getMeasureInView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    return-object v0
.end method

.method public getPopupHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    return v0
.end method

.method public getPopupWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    goto :goto_0
.end method

.method public isAlloowScrollAnchorParent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    return v0
.end method

.method public isAlwaysVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
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
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    return v0
.end method

.method public isWindowFaddingDark()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->dismiss()V

    goto :goto_0

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
    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    return-void
.end method

.method public postShow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAllowScrollAnchorParent(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    invoke-static {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method public setAlwaysVisible(Z)V
    .locals 0
    .param p1, "alwaysVisible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    return-void
.end method

.method public setClipToScreenEnabledExt(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setClipToScreenEnabled(Z)V

    return-void
.end method

.method public setContainView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "contentView":Landroid/view/View;
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContentView:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setPopupWidth(I)V

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    return-void
.end method

.method public setMeasureInAnchorParent(Z)V
    .locals 0
    .param p1, "measure"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    return-void
.end method

.method public setMeasureInView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    return-void
.end method

.method public setModifiedPositionListener(Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setPopupHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    return-void
.end method

.method public setPopupWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    return-void
.end method

.method public setWindowFadingDark(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->buildDropDown()Landroid/graphics/Point;

    move-result-object v7

    .local v7, "bound":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->y:I

    .local v9, "height":I
    iget v13, v7, Landroid/graphics/Point;->x:I

    .local v13, "width":I
    const/4 v4, 0x0

    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isInputMethodNotNeeded()Z

    move-result v10

    .local v10, "noInputMethod":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v4, -0x1

    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    if-eqz v10, :cond_2

    move v5, v9

    :goto_1
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    :goto_3
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .local v8, "gravityOffset":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    aget v2, v8, v0

    const/4 v0, 0x1

    aget v3, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->update(Landroid/view/View;IIII)V

    :goto_5
    return-void

    .end local v8    # "gravityOffset":[I
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    move v4, v13

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

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

    :cond_6
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    move v5, v9

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/4 v4, -0x1

    :goto_7
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v5, -0x1

    :goto_8
    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .restart local v8    # "gravityOffset":[I
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->checkPopupPosition(Landroid/view/View;III)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    .local v6, "anchor":Landroid/view/View;
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int v11, v0, v1

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

    .local v12, "posY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0, v6, v11, v12, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPrevShow(Landroid/view/View;III)V

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

    .end local v6    # "anchor":Landroid/view/View;
    .end local v8    # "gravityOffset":[I
    .end local v11    # "posX":I
    .end local v12    # "posY":I
    :cond_a
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, v13}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto :goto_7

    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto/16 :goto_7

    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    :cond_d
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    .restart local v8    # "gravityOffset":[I
    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method
