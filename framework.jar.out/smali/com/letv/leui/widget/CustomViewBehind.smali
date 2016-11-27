.class public Lcom/letv/leui/widget/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mActivePointerId:I

.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMarginThreshold:I

.field private mMaximumVelocity:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

.field private mVisibleAlways:Z

.field private mWidthChanged:Z

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMaximumVelocity:I

    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .local v0, "y":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .local v6, "alpha":I
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    .local v7, "left":I
    const/4 v8, 0x0

    .local v8, "right":I
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    :cond_1
    :goto_1
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "tag":Ljava/lang/String;
    const-string v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .local v1, "offset":I
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .local v2, "right":I
    sub-int v0, v2, v1

    .local v0, "left":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .restart local v0    # "left":I
    add-int v2, v0, v1

    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "left":I
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    :goto_0
    return v1

    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_2

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1
    return v1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    :goto_1
    return v1

    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .local v1, "right":I
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_2

    if-lt p2, v0, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_4

    if-gt p2, v1, :cond_3

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    if-lt p2, v0, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_0

    :cond_5
    if-gt p2, v1, :cond_6

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v10}, Lcom/letv/leui/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return v8

    :cond_0
    iget-object v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v10}, Lcom/letv/leui/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v10

    if-eqz v10, :cond_1

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move v8, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_2

    iget-boolean v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    if-eqz v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .local v1, "activePointerId":I
    if-eq v1, v11, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .local v4, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .local v6, "y":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v10, v4

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v5, v8

    .local v5, "xDiff":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    int-to-float v10, v6

    sub-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v7, v8

    .local v7, "yDiff":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    if-le v5, v8, :cond_3

    sub-int v8, v5, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    int-to-float v10, v4

    iget v11, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    sub-float/2addr v10, v11

    invoke-virtual {v8, v10}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_3

    iput-boolean v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    int-to-float v8, v4

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v8, v6

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "xDiff":I
    .end local v6    # "y":I
    .end local v7    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .restart local v6    # "y":I
    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    iput v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v9, v6

    iput v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->initOrResetVelocityTracker()V

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .end local v6    # "y":I
    :pswitch_3
    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    iput v11, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    goto/16 :goto_1

    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sub-int v2, p4, p2

    .local v2, "width":I
    sub-int v1, p5, p3

    .local v1, "height":I
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v3}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v0

    .local v0, "currentPage":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    .end local v0    # "currentPage":I
    :cond_1
    return-void

    .restart local v0    # "currentPage":I
    :pswitch_1
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v3, v5, v5, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    invoke-static {v5, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/letv/leui/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/CustomViewBehind;->setMeasuredDimension(II)V

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/letv/leui/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/letv/leui/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    :goto_0
    return v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    const/16 v21, 0x0

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/16 v21, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getChildCount()I

    move-result v21

    if-nez v21, :cond_3

    const/16 v21, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .local v19, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .local v20, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v6, v21, v22

    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    move/from16 v21, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v7, v21, v22

    .local v7, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v21, v21, v22

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .local v13, "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    const/16 v21, 0x0

    cmpl-float v21, v6, v21

    if-lez v21, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v6, v6, v21

    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v11, v0

    .local v11, "oldScrollX":F
    add-float v16, v11, v6

    .local v16, "scrollX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->getLeftBound()I

    move-result v21

    move/from16 v0, v21

    int-to-float v9, v0

    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->getRightBound()I

    move-result v21

    move/from16 v0, v21

    int-to-float v15, v0

    .local v15, "rightBound":F
    cmpg-float v21, v16, v9

    if-gez v21, :cond_8

    move/from16 v16, v9

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v16, v22

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getScrollY()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v13    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v6, v6, v21

    goto/16 :goto_2

    .end local v13    # "parent":Landroid/view/ViewParent;
    .restart local v9    # "leftBound":F
    .restart local v11    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_8
    cmpl-float v21, v16, v15

    if-lez v21, :cond_6

    move/from16 v16, v15

    goto :goto_3

    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v19    # "x":I
    .end local v20    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    .local v8, "initialVelocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v16

    .local v16, "scrollX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v21

    sub-int v21, v16, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v12, v21, v22

    .local v12, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .local v14, "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v12, v8, v1}, Lcom/letv/leui/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v10

    .local v10, "nextPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .end local v10    # "nextPage":I
    .end local v17    # "totalDelta":I
    :goto_4
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_4

    .end local v8    # "initialVelocity":I
    .end local v12    # "pageOffset":F
    .end local v14    # "pointerIndex":I
    .end local v16    # "scrollX":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x0

    .local v0, "vis":I
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->setVisibility(I)V

    return-void

    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_4

    iget-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_7

    iget-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_8

    move v0, v2

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .param p1, "t"    # Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mChildrenEnabled:Z

    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomViewAbove(Lcom/letv/leui/widget/CustomViewAbove;)V
    .locals 0
    .param p1, "customViewAbove"    # Lcom/letv/leui/widget/CustomViewAbove;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeDegree:F

    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeEnabled:Z

    return-void
.end method

.method public setMenuVisibleAlways(Z)V
    .locals 0
    .param p1, "visibleAlways"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .param p1, "scrollScale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->refreshDrawableState()V

    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    return-void
.end method

.method public setVisibleAlways(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    return-void
.end method

.method public setWidthOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
