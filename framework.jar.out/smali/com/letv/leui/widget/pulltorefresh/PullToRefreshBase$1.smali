.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V
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
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.1;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.1;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    # invokes: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    return-void
.end method
