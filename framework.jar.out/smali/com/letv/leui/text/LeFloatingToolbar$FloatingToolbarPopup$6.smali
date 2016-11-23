.class Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;
    invoke-static {v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;
    invoke-static {v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->checkArrowShowing(Lcom/letv/leui/widget/LeHorizontalScrollView;I)V

    .line 494
    :cond_0
    return-void
.end method
