.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;
.super Landroid/webkit/WebView;
.source "PullToRefreshWebView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalWebViewSDK9"
.end annotation


# static fields
.field static final OVERSCROLL_FUZZY_THRESHOLD:I = 0x2

.field static final OVERSCROLL_SCALE_FACTOR:F = 1.5f


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    iget-object v0, v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v9

    .local v9, "returnValue":Z
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView;

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshWebView$InternalWebViewSDK9;->getScrollRange()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x3fc00000    # 1.5f

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V

    return v9
.end method
