.class public Lcom/letv/leui/util/LeSwipeHelper;
.super Ljava/lang/Object;
.source "LeSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_X:I = 0x1

.field public static final DIRECTION_Y:I = 0x2

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_RAW_POS:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field protected mActivePointerId:I

.field protected mDirection:I

.field protected mDragging:Z

.field protected mInitialTouchPosRawX:F

.field protected mInitialTouchPosRawY:F

.field protected mLastRawX:F

.field protected mLastRawY:F

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/util/LeSwipeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeSwipeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->DEBUG:Z

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getViewConfiguration(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    return-void
.end method

.method private addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .local v2, "newEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .local v3, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .local v1, "currRawY":F
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v4, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->printMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private determineDrag(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .local v4, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .local v1, "currRawY":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, "deltaX":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .local v3, "deltaY":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-gtz v6, :cond_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private endSwipe(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    .local v0, "xVelocity":I
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v1, v2

    .local v1, "yVelocity":I
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMinimumVelocity:I

    invoke-interface {v2, v0, v1, v3}, Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;->onSwipeEnd(III)V

    :cond_0
    return-void
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    :cond_0
    return v0
.end method

.method private final getViewConfiguration(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMaximumVelocity:I

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initTouchPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .local v0, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .local v1, "pointerIndex":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iget v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    iget v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    .end local v0    # "newPointerIndex":I
    .end local v1    # "pointerIndex":I
    :cond_0
    return-void

    .restart local v1    # "pointerIndex":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final printMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetTouchPositionForActionUp()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    return-void
.end method

.method private updateViewPosition(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .local v5, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .local v1, "currRawY":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    sub-float v3, v0, v6

    .local v3, "offsetX":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    sub-float v4, v1, v6

    .local v4, "offsetY":F
    const/4 v2, 0x0

    .local v2, "needUpdate":Z
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    cmpl-float v6, v3, v8

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    cmpl-float v6, v4, v8

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    invoke-interface {v6, v3, v4}, Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;->onUpdateViewPositionBy(FF)V

    :cond_2
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    return v1

    :pswitch_1
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initVelocityTrackerIfNotExists()V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->determineDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->resetTouchPositionForActionUp()V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->recycleVelocityTracker()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :pswitch_1
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->determineDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    :cond_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->updateViewPosition(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->endSwipe(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->resetTouchPositionForActionUp()V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->recycleVelocityTracker()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    and-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    return-void
.end method

.method public setOnSwipeListener(Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "touchSlop"    # I

    .prologue
    if-ltz p1, :cond_0

    iput p1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    :cond_0
    return-void
.end method
