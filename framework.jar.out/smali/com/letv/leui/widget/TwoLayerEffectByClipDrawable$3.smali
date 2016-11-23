.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwoLayerEffectByClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->generateSwitchAnimateInTwoLayer(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

.field final synthetic val$isSwitched:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput-boolean p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->val$isSwitched:Z

    iput-object p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    # getter for: Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mBaseHelper:Lcom/letv/leui/widget/BaseSwipeHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->access$200(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;)Lcom/letv/leui/widget/BaseSwipeHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->val$isSwitched:Z

    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitched(ZLjava/lang/Object;)V

    .line 399
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 400
    return-void
.end method
