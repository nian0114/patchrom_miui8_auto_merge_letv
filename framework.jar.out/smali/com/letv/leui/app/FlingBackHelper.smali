.class public Lcom/letv/leui/app/FlingBackHelper;
.super Ljava/lang/Object;
.source "FlingBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/app/FlingBackHelper$1;,
        Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;,
        Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;
    }
.end annotation


# static fields
.field public static final DOWN_FLING_BACK:I = 0x8

.field public static final LEFT_FLING_BACK:I = 0x1

.field public static final NOT_FLING_BACK:I = 0x0

.field public static final RIGHT_FLING_BACK:I = 0x2

.field public static final UP_FLING_BACK:I = 0x4


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

.field private mFlingBackMode:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaledPagingTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    iput-object p1, p0, Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/app/FlingBackHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/app/FlingBackHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/app/FlingBackHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/app/FlingBackHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getFlingBackMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    return v0
.end method

.method public isDownFlingBackEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlingBackEnabled()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/app/FlingBackHelper;->isLeftFlingBackEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/app/FlingBackHelper;->isRightFlingBackEnabled()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/app/FlingBackHelper;->isUpFlingBackEnabled()Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/app/FlingBackHelper;->isDownFlingBackEnabled()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public isLeftFlingBackEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightFlingBackEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpFlingBackEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFlingBackMode(I)V
    .locals 4
    .param p1, "flingBackMode"    # I

    .prologue
    const/4 v3, 0x0

    iput p1, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    iget v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackMode:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;

    invoke-direct {v2, p0, v3}, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;-><init>(Lcom/letv/leui/app/FlingBackHelper;Lcom/letv/leui/app/FlingBackHelper$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/letv/leui/app/FlingBackHelper;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method public setOnFlingBackGestureListener(Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    return-void
.end method
