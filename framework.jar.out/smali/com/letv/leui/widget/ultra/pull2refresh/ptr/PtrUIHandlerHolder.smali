.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;


# instance fields
.field private mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

.field private mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 3
    .param p0, "head"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-nez v2, :cond_2

    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :goto_1
    invoke-direct {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v2, :cond_3

    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-direct {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    .local v1, "newHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    iput-object p1, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    iput-object v1, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_0

    .end local v1    # "newHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_3
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_1
.end method

.method private contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    return-object v0
.end method

.method private getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    return-object v0
.end method

.method public static removeHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .locals 4
    .param p0, "head"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    const/4 v1, 0x0

    .local v1, "pre":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_2
    invoke-direct {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    iget-object p0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iput-object v3, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    move-object v0, p0

    :goto_1
    if-nez v0, :cond_2

    if-nez p0, :cond_0

    new-instance p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .end local p0    # "head":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    .restart local p0    # "head":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iput-object v2, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iput-object v3, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iget-object v0, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_1

    :cond_4
    move-object v1, v0

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_1
.end method


# virtual methods
.method public hasHandler()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    return-void
.end method

.method public onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    return-void
.end method

.method public onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    return-void
.end method

.method public onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_1
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_2
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    move-object v0, p0

    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    return-void
.end method
