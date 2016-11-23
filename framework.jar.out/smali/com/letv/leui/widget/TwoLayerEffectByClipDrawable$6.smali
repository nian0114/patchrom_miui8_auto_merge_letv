.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;
.super Ljava/lang/Object;
.source "TwoLayerEffectByClipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 442
    .local v0, "currentValue":Ljava/lang/Float;
    iget-object v1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 443
    return-void
.end method
