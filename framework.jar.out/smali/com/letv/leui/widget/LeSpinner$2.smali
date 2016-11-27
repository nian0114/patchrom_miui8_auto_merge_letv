.class Lcom/letv/leui/widget/LeSpinner$2;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeSpinner;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeSpinner;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner;->access$100(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner;->access$100(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeSpinner;->getTextDirection()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeSpinner;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->show(II)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$2;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method
