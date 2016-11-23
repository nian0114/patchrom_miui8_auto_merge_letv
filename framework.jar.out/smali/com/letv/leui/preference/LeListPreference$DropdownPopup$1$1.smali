.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;->this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;->this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;->this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->access$1200(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;->this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->access$000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v2

    aget-object v1, v1, v2

    # invokes: Lcom/letv/leui/preference/LeListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeListPreference;->access$1300(Lcom/letv/leui/preference/LeListPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;->this$2:Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # invokes: Lcom/letv/leui/preference/LeListPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$1400(Lcom/letv/leui/preference/LeListPreference;)V

    .line 916
    :cond_0
    return-void
.end method
