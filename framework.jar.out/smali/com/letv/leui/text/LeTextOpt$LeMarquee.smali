.class public final Lcom/letv/leui/text/LeTextOpt$LeMarquee;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeMarquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mFarEnough:Z

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-byte v2, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    .line 782
    new-instance v1, Lcom/letv/leui/text/LeTextOpt$LeMarquee$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee$1;-><init>(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 789
    new-instance v1, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;-><init>(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 798
    new-instance v1, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;-><init>(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 910
    iput-boolean v2, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    .line 776
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 777
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mPixelsPerSecond:F

    .line 778
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mView:Ljava/lang/ref/WeakReference;

    .line 779
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    .line 780
    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)B
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    .prologue
    .line 750
    iget-byte v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/text/LeTextOpt$LeMarquee;B)B
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;
    .param p1, "x1"    # B

    .prologue
    .line 750
    iput-byte p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    return p1
.end method

.method static synthetic access$302(Lcom/letv/leui/text/LeTextOpt$LeMarquee;J)J
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;
    .param p1, "x1"    # J

    .prologue
    .line 750
    iput-wide p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    .prologue
    .line 750
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    return v0
.end method

.method static synthetic access$510(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)I
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    .prologue
    .line 750
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    return v0
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 849
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    .line 850
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 851
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 852
    :cond_0
    return-void
.end method


# virtual methods
.method public getGhostOffset()F
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostOffset:F

    return v0
.end method

.method public getMaxFadeScroll()F
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxFadeScroll:F

    return v0
.end method

.method public getScroll()F
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 901
    iget-byte v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 905
    iget-byte v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 912
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    .line 963
    :goto_1
    return v3

    .line 914
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mX:F

    .line 915
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mY:F

    goto :goto_1

    .line 919
    :pswitch_1
    iput-boolean v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    .line 920
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    if-ne v5, v3, :cond_1

    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxScroll:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->stop()V

    goto :goto_0

    .line 922
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 923
    invoke-virtual {p1}, Landroid/widget/TextView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_2

    .line 924
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 926
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v5}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 927
    iget-object v3, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v3, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 928
    :cond_3
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    if-gtz v5, :cond_4

    .line 929
    invoke-virtual {p0, v3}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    goto :goto_0

    .line 930
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    iget v3, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    goto :goto_0

    .line 935
    :pswitch_2
    iget-boolean v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    if-nez v5, :cond_5

    .line 936
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 937
    .local v2, "slop":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 938
    iput-boolean v3, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    .line 939
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mX:F

    .line 940
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mY:F

    .line 941
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    if-gtz v5, :cond_7

    .line 942
    invoke-virtual {p0, v3}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    .line 948
    .end local v2    # "slop":I
    :cond_5
    :goto_2
    iget-boolean v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    if-eqz v5, :cond_0

    .line 949
    iget v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 951
    .local v0, "dx":F
    iget v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    add-float v1, v4, v0

    .line 952
    .local v1, "nx":F
    const/4 v4, 0x0

    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxScroll:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 953
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mX:F

    .line 954
    iget v4, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_6

    .line 955
    invoke-virtual {p1}, Landroid/widget/TextView;->cancelLongPress()V

    .line 957
    :cond_6
    iput v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    .line 958
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1

    .line 943
    .end local v0    # "dx":F
    .end local v1    # "nx":F
    .restart local v2    # "slop":I
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 944
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    invoke-virtual {p0, v5}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    goto :goto_2

    .line 912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public shouldDrawGhost()Z
    .locals 2

    .prologue
    .line 897
    iget-byte v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDrawLeftFade()Z
    .locals 2

    .prologue
    .line 893
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(I)V
    .locals 7
    .param p1, "repeatLimit"    # I

    .prologue
    .line 855
    if-nez p1, :cond_1

    .line 856
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->stop()V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iput p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    .line 860
    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 861
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 862
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 863
    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    .line 864
    const/4 v5, 0x0

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    .line 865
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 867
    .local v4, "textWidth":I
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .line 868
    .local v2, "lineWidth":F
    int-to-float v5, v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float v0, v5, v6

    .line 869
    .local v0, "gap":F
    int-to-float v5, v4

    sub-float v5, v2, v5

    add-float/2addr v5, v0

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostStart:F

    .line 870
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostStart:F

    int-to-float v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxScroll:F

    .line 871
    add-float v5, v2, v0

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostOffset:F

    .line 872
    int-to-float v5, v4

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v2

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFadeStop:F

    .line 873
    iget v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mGhostStart:F

    add-float/2addr v5, v2

    add-float/2addr v5, v2

    iput v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxFadeScroll:F

    .line 875
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 876
    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v5, v6}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    .line 842
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 843
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 844
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 845
    invoke-direct {p0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->resetScroll()V

    .line 846
    return-void
.end method

.method tick()V
    .locals 10

    .prologue
    .line 811
    iget-byte v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 817
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 818
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 819
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 820
    .local v0, "currentMs":J
    iget-wide v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mLastAnimationMs:J

    sub-long v2, v0, v6

    .line 821
    .local v2, "deltaMs":J
    iput-wide v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mLastAnimationMs:J

    .line 822
    iget-boolean v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mFarEnough:Z

    if-nez v6, :cond_2

    .line 823
    long-to-float v6, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mPixelsPerSecond:F

    mul-float v4, v6, v7

    .line 824
    .local v4, "deltaPx":F
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    .line 826
    .end local v4    # "deltaPx":F
    :cond_2
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    iget v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 827
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mMaxScroll:F

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mScroll:F

    .line 828
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_3

    .line 829
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 836
    :goto_1
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 831
    :cond_3
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_1

    .line 834
    :cond_4
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1
.end method
