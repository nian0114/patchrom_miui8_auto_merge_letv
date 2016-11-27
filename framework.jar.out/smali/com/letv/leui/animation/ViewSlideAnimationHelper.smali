.class public Lcom/letv/leui/animation/ViewSlideAnimationHelper;
.super Ljava/lang/Object;
.source "ViewSlideAnimationHelper.java"


# static fields
.field private static final DURATION_DEFAULT:I = 0x15e

.field private static final TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;


# instance fields
.field private duration:I

.field private timeInterpolator:Landroid/animation/TimeInterpolator;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const/16 v0, 0x15e

    iput v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    sget-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    iput p2, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    sget-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    iput p2, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    iput-object p3, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    return v0
.end method

.method public getTimeInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    return-void
.end method

.method public setTimeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    return-void
.end method

.method public slideInFromBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "bottomIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideInFromLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "leftIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideInFromRight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "rightIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideInFromTop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "topIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideOutFromBottom()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "bottomOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideOutFromLeft()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "leftOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideOutFromRight()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "rightOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public slideOutFromTop()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "topOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
