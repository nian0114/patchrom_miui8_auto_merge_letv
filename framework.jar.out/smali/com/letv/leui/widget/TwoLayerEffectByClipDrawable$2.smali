.class Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;
.super Ljava/lang/Object;
.source "TwoLayerEffectByClipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$secLeftView:Landroid/view/View;

.field final synthetic val$secRightImgView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->this$0:Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    iput-object p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    iput-object p4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    iput-object p5, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    iput-object p6, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/16 v12, 0x2710

    const/4 v11, 0x0

    const v10, 0x461c4000    # 10000.0f

    .line 309
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 310
    .local v1, "currentTranslation":Ljava/lang/Float;
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 311
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    .line 312
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 313
    .local v0, "absTrans":F
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 314
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_2

    .line 315
    mul-float v8, v0, v10

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 317
    .local v5, "level":I
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 318
    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 319
    .local v3, "firRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 322
    .end local v3    # "firRightImageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 324
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 325
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 326
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 327
    iget-object v7, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    .line 328
    .local v7, "secRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 384
    .end local v0    # "absTrans":F
    .end local v5    # "level":I
    .end local v7    # "secRightImageView":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 332
    .restart local v0    # "absTrans":F
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 333
    iget-object v3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    .line 334
    .restart local v3    # "firRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 336
    .end local v3    # "firRightImageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 338
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 339
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v0, v8

    mul-float/2addr v8, v10

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 340
    .restart local v5    # "level":I
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 341
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 342
    iget-object v7, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    .line 343
    .restart local v7    # "secRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 349
    .end local v0    # "absTrans":F
    .end local v5    # "level":I
    .end local v7    # "secRightImageView":Landroid/widget/ImageView;
    :cond_4
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_6

    .line 351
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v8, v10

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firRightImgView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 353
    .restart local v5    # "level":I
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    .line 354
    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    .line 355
    .local v2, "firLeftImageView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 357
    .end local v2    # "firLeftImageView":Landroid/widget/ImageView;
    :cond_5
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 359
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 360
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 361
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 362
    iget-object v6, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    .line 363
    .local v6, "secLeftImageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 367
    .end local v5    # "level":I
    .end local v6    # "secLeftImageView":Landroid/widget/ImageView;
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 368
    iget-object v4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    .line 369
    .local v4, "firstLeftImageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 371
    .end local v4    # "firstLeftImageView":Landroid/widget/ImageView;
    :cond_7
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 373
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$firLeftView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v10

    iget-object v9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v5, v8

    .line 375
    .restart local v5    # "level":I
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 376
    iget-object v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secLeftView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 377
    iget-object v6, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;->val$secRightImgView:Landroid/view/View;

    check-cast v6, Landroid/widget/ImageView;

    .line 378
    .restart local v6    # "secLeftImageView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0
.end method
