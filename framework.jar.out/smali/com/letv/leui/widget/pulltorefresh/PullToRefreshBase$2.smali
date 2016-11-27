.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onSizeChanged(IIII)V
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
    .line 832
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.2;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 835
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase.2;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->requestLayout()V

    .line 836
    return-void
.end method
