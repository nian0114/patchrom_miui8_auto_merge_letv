.class Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;
.super Ljava/lang/Object;
.source "LeRotateLoadingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v4, 0xffffff

    const/high16 v7, 0x423c0000    # 47.0f

    .line 321
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    move-object v2, v3

    check-cast v2, Ljava/lang/Float;

    .line 322
    .local v2, "value":Ljava/lang/Float;
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1000(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 323
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1100(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    const v4, 0x3fb33333    # 1.4f

    div-float v1, v3, v4

    .line 325
    .local v1, "radius":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1200(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v3, v4, :cond_0

    .line 327
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1300(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1100(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;

    move-result-object v4

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1500(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v3, v5

    add-float v5, v7, v3

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1500(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v3, v6

    sub-float v3, v7, v3

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1300(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1300(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I
    invoke-static {v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1400(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-object v3, v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->access$1000(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    return-void
.end method
