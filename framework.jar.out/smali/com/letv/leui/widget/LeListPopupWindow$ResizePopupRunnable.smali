.class Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "LeListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;
    .param p2, "x1"    # Lcom/letv/leui/widget/LeListPopupWindow$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownResizeOnTouch:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->access$500(Lcom/letv/leui/widget/LeListPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/letv/leui/widget/LeListPopupWindow;->access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    iget v1, v1, Lcom/letv/leui/widget/LeListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow;->setInputMethodMode(I)V

    .line 603
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    .line 605
    :cond_0
    return-void
.end method
