.class Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$scrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;Lcom/letv/leui/widget/LeHorizontalScrollView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iput-object p2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;->val$scrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;->val$scrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v0, v1, p2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->checkArrowShowing(Lcom/letv/leui/widget/LeHorizontalScrollView;I)V

    return-void
.end method
