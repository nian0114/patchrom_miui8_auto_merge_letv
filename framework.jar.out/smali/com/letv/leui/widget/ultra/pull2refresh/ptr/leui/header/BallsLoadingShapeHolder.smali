.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
.super Ljava/lang/Object;
.source "BallsLoadingShapeHolder.java"


# instance fields
.field private alpha:F

.field private color:I

.field private gradient:Landroid/graphics/RadialGradient;

.field private paint:Landroid/graphics/Paint;

.field private shape:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->x:F

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->alpha:F

    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->color:I

    return v0
.end method

.method public getGradient()Landroid/graphics/RadialGradient;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->alpha:F

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->color:I

    return-void
.end method

.method public setGradient(Landroid/graphics/RadialGradient;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/RadialGradient;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Paint;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setShape(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->y:F

    return-void
.end method
