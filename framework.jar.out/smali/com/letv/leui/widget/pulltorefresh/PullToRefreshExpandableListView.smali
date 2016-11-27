.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ExpandableListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;

    invoke-direct {v1, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v1, "lv":Landroid/widget/ExpandableListView;
    :goto_0
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setId(I)V

    .end local v1    # "lv":Landroid/widget/ExpandableListView;
    :goto_1
    return-object v1

    :cond_0
    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;

    invoke-direct {v1, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v1    # "lv":Landroid/widget/ExpandableListView;
    goto :goto_0

    .end local v1    # "lv":Landroid/widget/ExpandableListView;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/ExpandableListView;

    .end local v2    # "view":Landroid/view/View;
    move-object v1, v2

    goto :goto_1

    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Refreshable View is not a ExpandableListView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
