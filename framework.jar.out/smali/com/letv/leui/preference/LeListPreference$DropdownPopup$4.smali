.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$2200(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->dismiss()V

    .line 1125
    :cond_1
    :goto_0
    return-void

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$1000(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1122
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mPopup:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->access$1000(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->show()V

    goto :goto_0
.end method
