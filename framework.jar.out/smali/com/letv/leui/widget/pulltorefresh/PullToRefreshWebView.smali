.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultWebChromeClient:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x102005c

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    new-instance v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;

    invoke-direct {v2, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setId(I)V

    .end local v2    # "webView":Landroid/webkit/WebView;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "webView":Landroid/webkit/WebView;
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setId(I)V

    goto :goto_0

    .end local v2    # "webView":Landroid/webkit/WebView;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/webkit/WebView;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/webkit/WebView;

    .end local v1    # "view":Landroid/view/View;
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Refreshable View is not a WebView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    .local v0, "exactContentHeight":F
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method
