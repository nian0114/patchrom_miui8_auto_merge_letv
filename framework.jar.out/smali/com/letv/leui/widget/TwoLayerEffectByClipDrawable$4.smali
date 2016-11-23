.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;
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

.field final synthetic val$btnHasRead:Landroid/widget/ImageView;

.field final synthetic val$clipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field final synthetic val$clipDrawableBg:Landroid/graphics/drawable/ClipDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/ClipDrawable;Landroid/graphics/drawable/ClipDrawable;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$btnHasRead:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$clipDrawable:Landroid/graphics/drawable/ClipDrawable;

    iput-object p5, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$clipDrawableBg:Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 412
    .local v0, "currentValue":Ljava/lang/Float;
    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 413
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$btnHasRead:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$btnHasRead:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 415
    .local v1, "level":I
    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$clipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 416
    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;->val$clipDrawableBg:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 418
    .end local v1    # "level":I
    :cond_0
    return-void
.end method
