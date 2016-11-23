.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    .prologue
    .line 894
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->val$this$0:Lcom/letv/leui/preference/LeListPreference;

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
    .line 896
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->dismiss()V

    .line 897
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 898
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # setter for: Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p3}, Lcom/letv/leui/preference/LeListPreference;->access$002(Lcom/letv/leui/preference/LeListPreference;I)I

    .line 899
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference;->onDialogClosed(Z)V

    .line 900
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$500(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->access$500(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->access$600(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 919
    :cond_1
    return-void

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->access$600(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
