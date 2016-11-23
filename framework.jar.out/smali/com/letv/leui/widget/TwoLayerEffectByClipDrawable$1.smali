.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwoLayerEffectByClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->generateRevealAnimateInTwoLayer(ILandroid/view/View;Landroid/view/View;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

.field final synthetic val$firLeftView:Landroid/view/View;

.field final synthetic val$firRightImgView:Landroid/view/View;

.field final synthetic val$moveTo:I

.field final synthetic val$secLeftView:Landroid/view/View;

.field final synthetic val$secRightImgView:Landroid/view/View;

.field final synthetic val$swap:Z

.field final synthetic val$swapRight:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    iput-object p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    iput-object p4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    iput-object p5, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firLeftView:Landroid/view/View;

    iput-object p6, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secLeftView:Landroid/view/View;

    iput-boolean p7, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$swap:Z

    iput-boolean p8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$swapRight:Z

    iput-object p9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 287
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 293
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    if-lez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 297
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    if-gez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    # getter for: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mBaseHelper:Lcom/letv/leui/widget/BaseSwipeHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$200(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;)Lcom/letv/leui/widget/BaseSwipeHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$swap:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$swapRight:Z

    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZLjava/lang/Object;)V

    .line 302
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 303
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 267
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    if-gez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secRightImgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$moveTo:I

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$firLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$000(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;->val$secLeftView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$000(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    goto :goto_0
.end method
