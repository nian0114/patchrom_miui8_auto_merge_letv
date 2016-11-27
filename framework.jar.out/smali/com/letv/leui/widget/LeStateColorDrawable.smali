.class public abstract Lcom/letv/leui/widget/LeStateColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "LeStateColorDrawable.java"


# instance fields
.field private mPressed:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeStateColorDrawable;->mPressed:Z

    return-void
.end method

.method private isPressed([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x0

    .local v2, "pressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    if-eqz p1, :cond_1

    array-length v1, p1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onIsPressed(Z)V
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeStateColorDrawable;->isPressed([I)Z

    move-result v0

    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeStateColorDrawable;->mPressed:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeStateColorDrawable;->mPressed:Z

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeStateColorDrawable;->mPressed:Z

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeStateColorDrawable;->onIsPressed(Z)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    move-result v0

    return v0
.end method
