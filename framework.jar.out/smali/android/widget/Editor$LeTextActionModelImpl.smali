.class public Landroid/widget/Editor$LeTextActionModelImpl;
.super Landroid/view/ActionMode;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeTextActionModelImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x12c

.field public static final TYPE_LE_FLOATING:I = 0x2


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback2;

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

.field private mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

.field private final mHideOff:Ljava/lang/Runnable;

.field private mIsFromTextView:Z

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mMovingOff:Ljava/lang/Runnable;

.field private final mOriginatingView:Landroid/view/View;

.field private final mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final mPreviousViewPositionOnScreen:[I

.field private final mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final mRootViewPositionOnScreen:[I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mViewPositionOnScreen:[I

.field private final mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mIsFromTextView:Z

    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$LeTextActionModelImpl$1;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$LeTextActionModelImpl$2;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Landroid/widget/Editor$LeTextActionModelImpl;->setType(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mIsFromTextView:Z

    :cond_0
    return-void
.end method

.method static synthetic access$5400(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$LeTextActionModelImpl;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/view/ActionMode$Callback2;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$LeTextActionModelImpl;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    return-object v0
.end method

.method private checkToolbarInitialized()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .prologue
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContentRectWithinBounds()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Landroid/widget/Editor$LeTextActionModelImpl;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Landroid/widget/Editor$LeTextActionModelImpl;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private repositionToolbar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->isContentRectWithinBounds()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v3}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mIsFromTextView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/letv/leui/text/LeFloatingToolbar;

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;

    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v3}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->deactivate()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->reset()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->invalidateContentRect()V

    return-void
.end method

.method public invalidateContentRect()V
    .locals 3

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->repositionToolbar()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    return-void
.end method

.method public setFloatingToolbar(Lcom/letv/leui/text/LeFloatingToolbar;)V
    .locals 2
    .param p1, "floatingToolbar"    # Lcom/letv/leui/text/LeFloatingToolbar;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/letv/leui/text/LeFloatingToolbar;

    move-result-object v0

    new-instance v1, Landroid/widget/Editor$LeTextActionModelImpl$3;

    invoke-direct {v1, p0}, Landroid/widget/Editor$LeTextActionModelImpl$3;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/letv/leui/text/LeFloatingToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-direct {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;-><init>(Lcom/letv/leui/text/LeFloatingToolbar;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->activate()V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public updateViewLocationInWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->repositionToolbar()V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
