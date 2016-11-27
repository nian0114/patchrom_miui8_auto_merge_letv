.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mOnChangeListener:Lcom/letv/leui/widget/LeItemView$OnChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->access$300(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$OnChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mOnChangeListener:Lcom/letv/leui/widget/LeItemView$OnChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->access$300(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$OnChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    iget-object v2, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView;->access$400(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;->this$2:Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;

    iget-object v3, v3, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mClickedDialogEntryIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/LeItemView;->access$100(Lcom/letv/leui/widget/LeItemView;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeItemView$OnChangeListener;->onChange(Lcom/letv/leui/widget/LeItemView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
