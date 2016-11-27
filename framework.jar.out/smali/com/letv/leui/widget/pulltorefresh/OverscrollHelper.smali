.class public final Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper$1;
    }
.end annotation


# static fields
.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f

.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRange"    # I
    .param p6, "fuzzyThreshold"    # I
    .param p7, "scaleFactor"    # F
    .param p8, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIIIFZ)V"
        }
    .end annotation

    .prologue
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    move v1, p3

    .local v1, "deltaValue":I
    move v4, p4

    .local v4, "scrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v0

    .local v0, "currentScrollValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    .local v2, "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p8, :cond_6

    if-eqz v1, :cond_6

    add-int v3, v1, v4

    .local v3, "newScrollValue":I
    rsub-int/lit8 v5, p6, 0x0

    if-ge v3, v5, :cond_2

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_0
    add-int v5, v0, v3

    int-to-float v5, v5

    mul-float/2addr v5, p7

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .end local v2    # "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .end local v3    # "newScrollValue":I
    :cond_1
    :goto_1
    return-void

    .end local v0    # "currentScrollValue":I
    .end local v1    # "deltaValue":I
    .end local v4    # "scrollValue":I
    :pswitch_0
    move v1, p1

    .restart local v1    # "deltaValue":I
    move v4, p2

    .restart local v4    # "scrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v0

    .restart local v0    # "currentScrollValue":I
    goto :goto_0

    .restart local v2    # "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .restart local v3    # "newScrollValue":I
    :cond_2
    add-int v5, p5, p6

    if-le v3, v5, :cond_4

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_3

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_3
    add-int v5, v0, v3

    sub-int/2addr v5, p5

    int-to-float v5, v5

    mul-float/2addr v5, p7

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, p6, :cond_5

    sub-int v5, v3, p5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, p6, :cond_1

    :cond_5
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    .end local v3    # "newScrollValue":I
    :cond_6
    if-eqz p8, :cond_1

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v6

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRange"    # I
    .param p6, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIIZ)V"
        }
    .end annotation

    .prologue
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V

    return-void
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIZ)V"
        }
    .end annotation

    .prologue
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    return-void
.end method
