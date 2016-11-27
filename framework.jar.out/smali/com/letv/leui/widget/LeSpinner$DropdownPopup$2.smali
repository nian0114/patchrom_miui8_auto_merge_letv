.class Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # invokes: Lcom/letv/leui/widget/LeSpinner;->isVisibleToUser()Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeSpinner;->access$700(Lcom/letv/leui/widget/LeSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->computeContentWidth()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    # invokes: Landroid/widget/ListPopupWindow;->show()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->access$801(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V

    goto :goto_0
.end method
