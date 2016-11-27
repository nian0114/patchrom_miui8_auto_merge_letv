.class public Lcom/letv/leui/widget/LockMovePoint;
.super Ljava/lang/Object;
.source "LockMovePoint.java"


# instance fields
.field private curX:F

.field private curY:F

.field private moveX:F

.field private moveY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "curX"    # F
    .param p2, "curY"    # F
    .param p3, "moveX"    # F
    .param p4, "moveY"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    iput p2, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    iput p3, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    iput p4, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    return-void
.end method


# virtual methods
.method public getCurX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    return v0
.end method

.method public getCurY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    return v0
.end method

.method public getMoveX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    return v0
.end method

.method public getMoveY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    return v0
.end method

.method public setCurX(F)V
    .locals 0
    .param p1, "curX"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curX:F

    return-void
.end method

.method public setCurY(F)V
    .locals 0
    .param p1, "curY"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->curY:F

    return-void
.end method

.method public setMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->moveX:F

    return-void
.end method

.method public setMoveY(F)V
    .locals 0
    .param p1, "moveY"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockMovePoint;->moveY:F

    return-void
.end method
