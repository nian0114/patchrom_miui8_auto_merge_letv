.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;
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

.field final synthetic val$mTextBack:Landroid/graphics/drawable/Drawable;

.field final synthetic val$mTextView:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextBack:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 427
    .local v1, "currentValue":Ljava/lang/Float;
    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 428
    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextBack:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v3, :cond_0

    .line 429
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextBack:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 430
    .local v0, "clipTextDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 431
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;->val$mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 432
    .local v2, "level":I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 435
    .end local v0    # "clipTextDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v2    # "level":I
    :cond_0
    return-void
.end method
