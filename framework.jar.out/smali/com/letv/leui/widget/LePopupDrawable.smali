.class public Lcom/letv/leui/widget/LePopupDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "LePopupDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_HEIGHT:I

.field public static DEFAULT_ARROW_WIDTH:I


# instance fields
.field private mArrowOffset:I

.field private mIsArrowOnTop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x18

    sput v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    const/16 v0, 0x30

    sput v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    return-void
.end method

.method public constructor <init>(FIZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "color"    # I
    .param p3, "isArrowOnTop"    # Z

    .prologue
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FLandroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public constructor <init>(FLandroid/content/res/ColorStateList;Z)V
    .locals 2
    .param p1, "radiusSize"    # F
    .param p2, "fillColorList"    # Landroid/content/res/ColorStateList;
    .param p3, "isArrowOnTop"    # Z

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    invoke-direct {v0, p1, p3}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;-><init>(FZ)V

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;)V

    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LePopupDrawable;->setFillColorList(Landroid/content/res/ColorStateList;)V

    iput-boolean p3, p0, Lcom/letv/leui/widget/LePopupDrawable;->mIsArrowOnTop:Z

    if-eqz p3, :cond_0

    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;)V
    .locals 0
    .param p1, "s"    # Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    return-void
.end method


# virtual methods
.method public getFillColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    return-object v0
.end method

.method public isArrowOnTop()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->isArrowOnTop()Z

    move-result v0

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->isShowArrow()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v1

    .local v1, "shape":Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateTextColors([I)Z

    move-result v0

    .local v0, "invalid":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->invalidateSelf()V

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->onStateChange([I)Z

    move-result v2

    return v2
.end method

.method public setArrowOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable;->mArrowOffset:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LePopupDrawable;->mArrowOffset:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setArrowOffset(I)V

    return-void
.end method

.method public setArrowOnTop(Z)V
    .locals 2
    .param p1, "isArrowOnTop"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setIsArrowOnTop(Z)V

    if-eqz p1, :cond_0

    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setArrowVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setArrowVisible(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->isArrowOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setFillColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "mFillColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
