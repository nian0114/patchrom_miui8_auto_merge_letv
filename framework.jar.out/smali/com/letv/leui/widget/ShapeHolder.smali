.class public Lcom/letv/leui/widget/ShapeHolder;
.super Ljava/lang/Object;
.source "ShapeHolder.java"


# static fields
.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final RADIUS:Ljava/lang/String; = "radius"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final X:Ljava/lang/String; = "x"

.field public static final Y:Ljava/lang/String; = "y"


# instance fields
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

    iput v0, p0, Lcom/letv/leui/widget/ShapeHolder;->x:F

    iput v0, p0, Lcom/letv/leui/widget/ShapeHolder;->y:F

    iput-object p1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ShapeHolder;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getGradient()Landroid/graphics/RadialGradient;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public getShape()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

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
    iget-object v0, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/letv/leui/widget/ShapeHolder;->color:I

    return-void
.end method

.method public setGradient(Landroid/graphics/RadialGradient;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/RadialGradient;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

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
    iput-object p1, p0, Lcom/letv/leui/widget/ShapeHolder;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    mul-float v1, p1, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    return-void
.end method

.method public setShape(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

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
    iput p1, p0, Lcom/letv/leui/widget/ShapeHolder;->x:F

    return-void
.end method

.method public setXY(FF)V
    .locals 0
    .param p1, "valueX"    # F
    .param p2, "valueY"    # F

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ShapeHolder;->setX(F)V

    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/ShapeHolder;->setY(F)V

    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ShapeHolder;->y:F

    return-void
.end method
