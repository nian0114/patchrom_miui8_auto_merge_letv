.class Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
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
    .line 413
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v0, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->access$000(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v0, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->access$000(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->arrowScroll(I)Z

    .line 419
    :cond_0
    return-void
.end method
