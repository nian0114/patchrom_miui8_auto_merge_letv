.class Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;Lcom/letv/leui/widget/LeListPreferenceView;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->val$this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 637
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->dismiss()V

    .line 638
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->access$300(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 639
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # setter for: Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I
    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeListPreferenceView;->access$302(Lcom/letv/leui/widget/LeListPreferenceView;I)I

    .line 641
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->access$400(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->access$400(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->access$500(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->access$500(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 644
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->messageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->access$400(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->access$500(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1$1;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    :cond_1
    return-void
.end method
