.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->refreshComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    # invokes: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefreshComplete()V
    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->access$100(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    return-void
.end method
