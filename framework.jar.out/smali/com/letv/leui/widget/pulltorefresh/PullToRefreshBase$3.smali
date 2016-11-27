.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.3;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.3;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0xe1

    const/4 v6, 0x0

    # invokes: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    invoke-static/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$100(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method
