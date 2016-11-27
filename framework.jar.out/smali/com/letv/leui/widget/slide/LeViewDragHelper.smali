.class public Lcom/letv/leui/widget/slide/LeViewDragHelper;
.super Ljava/lang/Object;
.source "LeViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LeViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/slide/LeViewDragHelper$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    new-instance v2, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;-><init>(Lcom/letv/leui/widget/slide/LeViewDragHelper;)V

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/letv/leui/widget/slide/LeViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .local v0, "checkHorizontal":Z
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .local v1, "checkVertical":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_2
    move v0, v3

    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v3

    goto :goto_2

    .restart local v1    # "checkVertical":Z
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absValue":F
    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    .end local p3    # "absMax":F
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "absMax":F
    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .local v0, "absValue":I
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .end local p3    # "absMax":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "absMax":I
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .local v2, "duration":I
    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    iget v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(III)I

    move-result p4

    iget v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(III)I

    move-result p5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .local v5, "absYVel":I
    add-int v7, v4, v5

    .local v7, "addedVel":I
    add-int v6, v2, v3

    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .local v8, "xduration":I
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    .restart local v9    # "xweight":F
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    invoke-static {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v0

    .local v0, "helper":Lcom/letv/leui/widget/slide/LeViewDragHelper;
    iget v1, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    move v2, p1

    .local v2, "clampedX":I
    move v3, p2

    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v4, v2, v6

    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .local v1, "edl":[I
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    iput-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    iput-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    .local v10, "startLeft":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .local v6, "startTop":I
    sub-int v2, p1, v10

    .local v2, "dx":I
    sub-int v3, p2, v6

    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .local v9, "duration":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(FFF)F

    move-result v0

    .local v0, "xvel":F
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(FFF)F

    move-result v1

    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    invoke-direct {p0, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .local v4, "y":F
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .local v6, "oldX":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .local v7, "oldY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "newX":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .local v3, "newY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    check-cast v9, Landroid/view/ViewGroup;

    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v3, 0x1

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v6, v1, v4

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v7, v1, v4

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :goto_1
    return v1

    .restart local v2    # "child":Landroid/view/View;
    .restart local v8    # "count":I
    .restart local v9    # "group":Landroid/view/ViewGroup;
    .restart local v10    # "i":I
    .restart local v11    # "scrollX":I
    .restart local v12    # "scrollY":I
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    move/from16 v0, p4

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_2

    move v0, v4

    .local v0, "checkHorizontal":Z
    :goto_1
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v1, v4

    .local v1, "checkVertical":Z
    :goto_2
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .local v2, "dx":F
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_2
    move v0, v5

    goto :goto_1

    .restart local v0    # "checkHorizontal":Z
    :cond_3
    move v1, v5

    goto :goto_2

    .restart local v1    # "checkVertical":Z
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .local v3, "y":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .local v4, "dx":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .local v5, "dy":I
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v6, 0x0

    :cond_6
    if-nez v6, :cond_7

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_7
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_9

    const/4 v0, 0x1

    :goto_2
    move v7, v0

    goto :goto_0

    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v6    # "keepGoing":Z
    :cond_8
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    goto :goto_1

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "keepGoing":Z
    :cond_9
    move v0, v7

    goto :goto_2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isEdgeTouched(II)Z
    .locals 1
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aget v0, v0, p2

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointerDown(I)Z
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dragTo(IIII)V

    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    const/4 v13, -0x1

    .local v13, "newActivePointer":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->releaseViewForPointerUp()V

    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->releaseViewForPointerUp()V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dispatchViewReleased(FF)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewDragStateChanged(I)V

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public settleViewAt(Landroid/view/View;III)Z
    .locals 8
    .param p1, "capturedView"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v5, v7, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .local v1, "startLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .local v2, "startTop":I
    sub-int v3, p2, v1

    .local v3, "dx":I
    sub-int v4, p3, v2

    .local v4, "dy":I
    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    move v0, v6

    goto :goto_0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .local v5, "actionIndex":I
    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/16 v24, 0x1

    :goto_1
    return v24

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .local v23, "y":F
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .local v17, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .local v20, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .local v8, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .end local v8    # "edgesTouched":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .restart local v23    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .restart local v8    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .end local v8    # "edgesTouched":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .local v16, "pointerCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v6, v22, v24

    .local v6, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v7, v23, v24

    .local v7, "dy":F
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "toCapture":Landroid/view/View;
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v24

    if-eqz v24, :cond_7

    const/4 v15, 0x1

    .local v15, "pastSlop":Z
    :goto_3
    if-eqz v15, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v13

    .local v13, "oldLeft":I
    float-to-int v0, v6

    move/from16 v24, v0

    add-int v18, v13, v24

    .local v18, "targetLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v6

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    .local v11, "newLeft":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v14

    .local v14, "oldTop":I
    float-to-int v0, v7

    move/from16 v24, v0

    add-int v19, v14, v24

    .local v19, "targetTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    float-to-int v0, v7

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v12

    .local v12, "newTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v9

    .local v9, "horizontalDragRange":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v21

    .local v21, "verticalDragRange":I
    if-eqz v9, :cond_5

    if-lez v9, :cond_8

    if-ne v11, v13, :cond_8

    :cond_5
    if-eqz v21, :cond_6

    if-lez v21, :cond_8

    if-ne v12, v14, :cond_8

    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v9    # "horizontalDragRange":I
    .end local v11    # "newLeft":I
    .end local v12    # "newTop":I
    .end local v13    # "oldLeft":I
    .end local v14    # "oldTop":I
    .end local v15    # "pastSlop":Z
    .end local v17    # "pointerId":I
    .end local v18    # "targetLeft":I
    .end local v19    # "targetTop":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v21    # "verticalDragRange":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .restart local v6    # "dx":F
    .restart local v7    # "dy":F
    .restart local v17    # "pointerId":I
    .restart local v20    # "toCapture":Landroid/view/View;
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .restart local v15    # "pastSlop":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v7, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v24

    if-nez v24, :cond_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v10    # "i":I
    .end local v15    # "pastSlop":Z
    .end local v16    # "pointerCount":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .restart local v17    # "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .end local v17    # "pointerId":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public slideView(Landroid/view/View;III)Z
    .locals 6
    .param p1, "capturedView"    # Landroid/view/View;
    .param p2, "startLeft"    # I
    .param p3, "finalLeft"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .local v2, "startTop":I
    sub-int v3, p3, p2

    .local v3, "dx":I
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v1, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, p2, p3, v2, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
