.class public Lcom/letv/leui/widget/ModifiedGallery;
.super Lcom/letv/leui/widget/AbsSpinner;
.source "ModifiedGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;,
        Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;,
        Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x1

.field public static final CHOICE_MODE_SINGLE:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x5dc

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x2

.field static final TOUCH_MODE_OVERFLING:I = 0x4

.field static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mChildWidth:I

.field private mContextMenuInfo:Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDefaultMaxOverScrollDistance:I

.field private mDeltaLength:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownFirstPosition:I

.field private mDownLastPosition:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mMaxOverScrollDistance:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

.field private mScrollEnableWhenLessContent:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ModifiedGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600bf

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/ModifiedGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    iput v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    const/16 v2, 0xfa

    iput v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAnimationDuration:I

    new-instance v2, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;-><init>(Lcom/letv/leui/widget/ModifiedGallery;)V

    iput-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    new-instance v2, Lcom/letv/leui/widget/ModifiedGallery$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/ModifiedGallery$1;-><init>(Lcom/letv/leui/widget/ModifiedGallery;)V

    iput-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldCallbackDuringFling:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    iput v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    sget-object v2, Lcom/android/internal/R$styleable;->ModifiedGallery:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .local v1, "spacing":I
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->setSpacing(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDefaultMaxOverScrollDistance:I

    const/4 v2, 0x2

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDefaultMaxOverScrollDistance:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/ModifiedGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/ModifiedGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/ModifiedGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/ModifiedGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/ModifiedGallery;)Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/ModifiedGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/ModifiedGallery;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    return v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/ModifiedGallery;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/ModifiedGallery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/letv/leui/widget/ModifiedGallery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ModifiedGallery;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    return p1
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getMeasuredHeight()I

    move-result v3

    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "childTop":I
    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    return v2

    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .local v0, "availableSpace":I
    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    goto :goto_2

    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v7

    .local v7, "numChildren":I
    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "start":I
    const/4 v1, 0x0

    .local v1, "count":I
    if-eqz p1, :cond_7

    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v3

    .local v3, "galleryLeft":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    add-int/lit8 v9, v7, -0x1

    if-ge v5, v9, :cond_0

    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_4

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .local v6, "n":I
    :goto_2
    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_5

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v3, :cond_6

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-nez v9, :cond_1

    const/4 v8, 0x0

    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_4
    invoke-virtual {p0, v8, v1}, Lcom/letv/leui/widget/ModifiedGallery;->detachViewsFromParent(II)V

    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    iget v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    :cond_2
    return-void

    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v9

    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int v3, v9, v10

    .restart local v3    # "galleryLeft":I
    goto :goto_0

    .restart local v5    # "i":I
    :cond_4
    move v6, v5

    goto :goto_2

    .restart local v6    # "n":I
    :cond_5
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .restart local v0    # "child":Landroid/view/View;
    :cond_6
    move v8, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_7
    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v4, v9, v10

    .local v4, "galleryRight":I
    :goto_5
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_6
    const/4 v9, 0x1

    if-lt v5, v9, :cond_8

    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_a

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .restart local v6    # "n":I
    :goto_7
    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_b

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v4, :cond_c

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_8
    iget-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    const/4 v8, 0x0

    goto :goto_4

    .end local v4    # "galleryRight":I
    .end local v5    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v10

    sub-int v4, v9, v10

    .restart local v4    # "galleryRight":I
    goto :goto_5

    .restart local v5    # "i":I
    :cond_a
    move v6, v5

    goto :goto_7

    .restart local v6    # "n":I
    :cond_b
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .restart local v0    # "child":Landroid/view/View;
    :cond_c
    move v8, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_6
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x0

    .local v6, "handled":Z
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnItemLongClickListener:Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    new-instance v0, Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mContextMenuInfo:Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;

    invoke-super {p0, p0}, Lcom/letv/leui/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->performHapticFeedback(I)Z

    :cond_2
    return v6
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->setPressed(Z)V

    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryLeftRtl()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v2

    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "curPosition":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 8

    .prologue
    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v2

    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v4

    .local v4, "numChildren":I
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "prevIterationView":Landroid/view/View;
    if-eqz v5, :cond_0

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int v0, v6, v4

    .local v0, "curPosition":I
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ge v0, v6, :cond_1

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v6, v0, v6

    const/4 v7, 0x0

    invoke-direct {p0, v0, v6, v1, v7}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v1, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .restart local v1    # "curRightEdge":I
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryRightRtl()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int v2, v7, v8

    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v4

    .local v4, "numChildren":I
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int v1, v7, v4

    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v0

    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    .local v3, "itemSpacing":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "galleryRight":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "curPosition":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v0

    .restart local v0    # "curLeftEdge":I
    iput-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCenterOfModifiedGallery()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildren()V
    .locals 10

    .prologue
    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    .local v6, "itemSpacing":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v4

    .local v4, "galleryLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v9

    sub-int v5, v8, v9

    .local v5, "galleryRight":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    .local v7, "numItems":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v8, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    .local v1, "curPosition":I
    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v2, v5, v8

    .local v2, "curRightEdge":I
    :goto_0
    if-le v2, v4, :cond_1

    if-ge v1, v7, :cond_1

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    const/4 v9, 0x0

    invoke-direct {p0, v1, v8, v2, v9}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .local v3, "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v8, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "curPosition":I
    .end local v2    # "curRightEdge":I
    .end local v3    # "curView":Landroid/view/View;
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    .restart local v1    # "curPosition":I
    add-int v0, v4, v6

    .local v0, "curLeftEdge":I
    :goto_1
    if-ge v0, v5, :cond_1

    if-ge v1, v7, :cond_1

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    sub-int v8, v1, v8

    const/4 v9, 0x1

    invoke-direct {p0, v1, v8, v0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "curView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    add-int v0, v8, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "curLeftEdge":I
    .end local v3    # "curView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDataChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/letv/leui/widget/ModifiedGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/letv/leui/widget/ModifiedGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    invoke-super {p0}, Lcom/letv/leui/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    return-void
.end method

.method private scrollIntoSlots()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x0

    .local v3, "scrollAmount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    if-nez v7, :cond_2

    :cond_0
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    if-eqz v7, :cond_1

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "startView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "endView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v5, v7, v8

    .local v5, "start":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v1

    .local v1, "end":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    if-ne v7, v9, :cond_5

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v3, v7, v8

    :cond_3
    :goto_1
    if-eqz v3, :cond_a

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    if-eq v7, v9, :cond_4

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    invoke-virtual {v7, v3}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-eq v7, v5, :cond_3

    invoke-static {v6}, Lcom/letv/leui/widget/ModifiedGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .local v4, "selectedCenter":I
    if-lt v4, v5, :cond_6

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    :goto_2
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v3

    if-le v7, v1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int v3, v7, v8

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_2

    .end local v1    # "end":I
    .end local v4    # "selectedCenter":I
    .end local v5    # "start":I
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int v5, v7, v8

    .restart local v5    # "start":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int v1, v7, v8

    .restart local v1    # "end":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    if-ne v7, v9, :cond_8

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v7, v8, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    if-eq v7, v5, :cond_3

    invoke-static {v6}, Lcom/letv/leui/widget/ModifiedGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    .restart local v4    # "selectedCenter":I
    if-ge v4, v5, :cond_9

    invoke-virtual {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    :goto_3
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v7, v8, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v3

    if-ge v7, v1, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v1, v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v3, v7, v8

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v5, v7

    goto :goto_3

    .end local v4    # "selectedCenter":I
    :cond_a
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    if-eqz v7, :cond_b

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_b
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->onFinishedMovement()V

    const/4 v7, -0x1

    iput v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    goto/16 :goto_0
.end method

.method private setSelectionView()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    .local v0, "newPos":I
    iget v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->checkSelectionChanged()V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .local v8, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    .local v7, "lp":Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;
    :goto_0
    iget-boolean v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    move/from16 v0, p4

    if-eq v0, v10, :cond_2

    const/4 v10, -0x1

    :goto_1
    invoke-virtual {p0, p1, v10, v7}, Lcom/letv/leui/widget/ModifiedGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mHeightMeasureSpec:I

    iget-object v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;->height:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .local v2, "childHeightSpec":I
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mWidthMeasureSpec:I

    iget-object v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    iget v12, v7, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;->width:I

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .local v6, "childWidthSpec":I
    invoke-virtual {p1, v6, v2}, Landroid/view/View;->measure(II)V

    const/4 v10, 0x1

    invoke-direct {p0, p1, v10}, Lcom/letv/leui/widget/ModifiedGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v5

    .local v5, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v1, v5, v10

    .local v1, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .local v9, "width":I
    if-eqz p4, :cond_3

    move/from16 v3, p3

    .local v3, "childLeft":I
    add-int v4, v3, v9

    .local v4, "childRight":I
    :goto_2
    invoke-virtual {p1, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    return-void

    .end local v1    # "childBottom":I
    .end local v2    # "childHeightSpec":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v6    # "childWidthSpec":I
    .end local v7    # "lp":Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;
    .end local v9    # "width":I
    :cond_0
    instance-of v10, v8, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    if-eqz v10, :cond_1

    move-object v7, v8

    check-cast v7, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;
    goto :goto_0

    .end local v7    # "lp":Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    .restart local v7    # "lp":Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;
    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .restart local v1    # "childBottom":I
    .restart local v2    # "childHeightSpec":I
    .restart local v5    # "childTop":I
    .restart local v6    # "childWidthSpec":I
    .restart local v9    # "width":I
    :cond_3
    sub-int v3, p3, v9

    .restart local v3    # "childLeft":I
    move/from16 v4, p3

    .restart local v4    # "childRight":I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/ModifiedGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mContextMenuInfo:Lcom/letv/leui/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDataChanged:Z

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    iget v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;->onScroll(Lcom/letv/leui/widget/ModifiedGallery;III)V

    :cond_0
    return-void
.end method

.method layout(IZ)V
    .locals 9
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    :cond_0
    iget-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDataChanged:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->handleDataChanged()V

    :cond_1
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->resetList()V

    :goto_1
    return-void

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mNextSelectedPosition:I

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->setSelectedPositionInt(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->detachAllViewsFromParent()V

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iput v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->layoutChildren()V

    iget-object v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->checkSelectionChanged()V

    iput-boolean v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDataChanged:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mNeedSync:Z

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->setNextSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->updateSelectedItemMetadata()V

    iput v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    if-nez v5, :cond_7

    const/4 v1, 0x0

    .local v1, "distance":I
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ge v5, v6, :cond_5

    iget-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    neg-int v5, v5

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    :goto_2
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    .end local v1    # "distance":I
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invokeOnItemScrollListener()V

    goto/16 :goto_1

    .restart local v1    # "distance":I
    :cond_6
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v6, v7

    mul-int v1, v5, v6

    goto :goto_2

    .end local v1    # "distance":I
    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    if-gtz v5, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    iget-boolean v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int v2, v5, v6

    .local v2, "mostLeft":I
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_5

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    goto :goto_3

    .end local v2    # "mostLeft":I
    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v3, v5, v6

    .local v3, "mostRight":I
    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_5

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    goto :goto_3
.end method

.method onCancel()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->onUp()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iput v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->stop(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMotionY:I

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownFirstPosition:I

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownLastPosition:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsFirstScroll:Z

    return v2

    :cond_2
    iput v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldCallbackDuringFling:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    packed-switch v7, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v7, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x44bb8000    # 1500.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    iput v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .local v3, "length":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    div-int v7, v3, v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .local v4, "scale":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mChildWidth:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    mul-int v1, v4, v7

    .local v1, "delta":I
    const/4 v7, 0x0

    cmpl-float v7, p3, v7

    if-lez v7, :cond_6

    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v5, v7, v8

    .local v5, "startEdge":I
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .end local v5    # "startEdge":I
    .local v2, "distance":I
    :goto_2
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    invoke-virtual {v7, v2}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .end local v2    # "distance":I
    .restart local v5    # "startEdge":I
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v2, v5, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int/2addr v7, v8

    sub-int v2, v1, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .end local v2    # "distance":I
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v2, v7, v1

    .restart local v2    # "distance":I
    goto :goto_2

    .end local v2    # "distance":I
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    iget-boolean v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownFirstPosition:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v5, v7, v8

    .restart local v5    # "startEdge":I
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .end local v2    # "distance":I
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v5, v7

    sub-int v7, v1, v7

    neg-int v2, v7

    .restart local v2    # "distance":I
    goto :goto_2

    .end local v2    # "distance":I
    .end local v5    # "startEdge":I
    .end local v6    # "view":Landroid/view/View;
    :cond_8
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownLastPosition:I

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .end local v2    # "distance":I
    :cond_9
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v7, v8

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .restart local v2    # "distance":I
    goto/16 :goto_2

    .end local v1    # "delta":I
    .end local v2    # "distance":I
    .end local v3    # "length":I
    .end local v4    # "scale":I
    .end local v6    # "view":Landroid/view/View;
    :pswitch_2
    const/4 v7, 0x4

    iput v7, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/AbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Lcom/letv/leui/widget/ModifiedGallery;->layout(IZ)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mInLayout:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->performHapticFeedback(I)Z

    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .local v0, "id":J
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDeltaLength:I

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldCallbackDuringFling:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsFirstScroll:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    if-nez v4, :cond_1

    iput-boolean v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {p0, v4, v6, v7}, Lcom/letv/leui/widget/ModifiedGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsFirstScroll:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_3
    iput v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    float-to-int v1, p3

    .local v1, "incrementalDeltaX":I
    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDefaultMaxOverScrollDistance:I

    iput v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    iput v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    if-lt v4, v5, :cond_8

    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    mul-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    :cond_6
    iput-boolean v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsFirstScroll:Z

    move v2, v3

    goto :goto_0

    .end local v1    # "incrementalDeltaX":I
    :cond_7
    iget-boolean v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    goto :goto_1

    .restart local v1    # "incrementalDeltaX":I
    :cond_8
    iget v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    iget v5, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v8, v4

    .local v0, "coeff":F
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v1, v4

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/AbsSpinner;->onSizeChanged(IIII)V

    new-instance v0, Lcom/letv/leui/widget/ModifiedGallery$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery$2;-><init>(Lcom/letv/leui/widget/ModifiedGallery;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/ModifiedGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->onUp()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->dispatchUnpress()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFlingRunnable:Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;->onScrollStateChanged(Lcom/letv/leui/widget/ModifiedGallery;I)V

    :cond_0
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/letv/leui/widget/AbsSpinner;->selectionChanged()V

    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAnimationDuration:I

    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mShouldCallbackDuringFling:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mGravity:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMaxOverScrollDistance(I)V
    .locals 1
    .param p1, "distance"    # I

    .prologue
    if-gez p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mDefaultMaxOverScrollDistance:I

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mMaxOverScrollDistance:I

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mOnScrollListener:Lcom/letv/leui/widget/ModifiedGallery$OnScrollListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setScrollEnableWhenLessContent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mScrollEnableWhenLessContent:Z

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->updateSelectedItemMetadata()V

    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iget v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/letv/leui/widget/ModifiedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ModifiedGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/ModifiedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)Z
    .locals 14
    .param p1, "deltaX"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    if-gez p1, :cond_6

    const/4 v9, 0x1

    .local v9, "toLeft":Z
    :goto_1
    const/4 v6, 0x0

    .local v6, "isAtEdge":Z
    const/4 v3, 0x0

    .local v3, "dontRecycle":Z
    iget-boolean v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    if-nez v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int/2addr v11, v12

    if-lt v10, v11, :cond_7

    if-gtz p1, :cond_7

    const/4 v0, 0x1

    .local v0, "cannotScrollLeft":Z
    :goto_2
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v11

    if-lt v10, v11, :cond_8

    if-ltz p1, :cond_8

    const/4 v1, 0x1

    .local v1, "cannotScrollRight":Z
    :goto_3
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ModifiedGallery;->offsetChildrenLeftAndRight(I)V

    if-nez v3, :cond_4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/ModifiedGallery;->detachOffScreenChildren(Z)V

    if-eqz v9, :cond_c

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryRight()V

    :goto_4
    iget-object v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mRecycler:Lcom/letv/leui/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v10}, Lcom/letv/leui/widget/AbsSpinner$RecycleBin;->clear()V

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->setSelectionView()V

    :cond_4
    const/4 v10, 0x0

    iput v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getChildCount()I

    move-result v2

    iget-boolean v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mIsRtl:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    .local v5, "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v7

    .local v7, "last":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int v4, v10, v11

    .local v4, "end":I
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    if-nez v10, :cond_d

    if-ge v5, v4, :cond_d

    sub-int v10, v4, v5

    iput v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    const/4 v6, 0x1

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invokeOnItemScrollListener()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/letv/leui/widget/ModifiedGallery;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    goto/16 :goto_0

    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    .end local v3    # "dontRecycle":Z
    .end local v4    # "end":I
    .end local v5    # "first":I
    .end local v6    # "isAtEdge":Z
    .end local v7    # "last":I
    .end local v9    # "toLeft":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v3    # "dontRecycle":Z
    .restart local v6    # "isAtEdge":Z
    .restart local v9    # "toLeft":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .restart local v0    # "cannotScrollLeft":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .end local v0    # "cannotScrollLeft":Z
    :cond_9
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    if-nez v10, :cond_a

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v11

    iget v12, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_a

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    .restart local v1    # "cannotScrollRight":Z
    :goto_6
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v10, v11, :cond_b

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    if-gt v10, v11, :cond_b

    if-gtz p1, :cond_b

    const/4 v0, 0x1

    .restart local v0    # "cannotScrollLeft":Z
    :goto_7
    goto/16 :goto_3

    .end local v0    # "cannotScrollLeft":Z
    .end local v1    # "cannotScrollRight":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .restart local v1    # "cannotScrollRight":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .restart local v0    # "cannotScrollLeft":Z
    :cond_c
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery;->fillToGalleryLeft()V

    goto/16 :goto_4

    .restart local v4    # "end":I
    .restart local v5    # "first":I
    .restart local v7    # "last":I
    :cond_d
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v10, v11, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v10

    if-le v7, v10, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    iput v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    const/4 v6, 0x1

    goto :goto_5

    .end local v4    # "end":I
    .end local v5    # "first":I
    .end local v7    # "last":I
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v5

    .restart local v5    # "first":I
    add-int/lit8 v10, v2, -0x1

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/ModifiedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v7

    .restart local v7    # "last":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingLeft()I

    move-result v10

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    add-int v8, v10, v11

    .local v8, "start":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .restart local v4    # "end":I
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    if-nez v10, :cond_f

    if-le v5, v8, :cond_f

    sub-int v10, v8, v5

    iput v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_f
    iget v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mFirstPosition:I

    add-int/2addr v10, v2

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-ne v10, v11, :cond_5

    if-ge v7, v4, :cond_5

    sub-int v10, v4, v7

    iget v11, p0, Lcom/letv/leui/widget/ModifiedGallery;->mSpacing:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I

    const/4 v6, 0x1

    goto/16 :goto_5
.end method
