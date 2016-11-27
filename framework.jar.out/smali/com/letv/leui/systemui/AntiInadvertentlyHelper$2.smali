.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;
.super Ljava/lang/Object;
.source "AntiInadvertentlyHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->loadViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 114
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$300(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN,showing,mCoverView alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$500(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$500(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$500(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
