.class public Lcom/letv/leui/widget/BallShapeHolder;
.super Ljava/lang/Object;
.source "BallShapeHolder.java"


# instance fields
.field private arc:F

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method


# virtual methods
.method public getArc()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->arc:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->color:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->radius:F

    return v0
.end method

.method public getShapeDrawable()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->y:F

    return v0
.end method

.method public setArc(F)V
    .locals 0
    .param p1, "arc"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->arc:F

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->color:I

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    mul-float v1, p1, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->radius:F

    return-void
.end method

.method public setShapeDrawable(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->y:F

    return-void
.end method
