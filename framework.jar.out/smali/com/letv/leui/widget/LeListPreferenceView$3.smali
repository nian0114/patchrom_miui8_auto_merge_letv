.class Lcom/letv/leui/widget/LeListPreferenceView$3;
.super Landroid/widget/ArrayAdapter;
.source "LeListPreferenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView;->showDropdownPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$3;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "title":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView$3;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorSelected:I
    invoke-static {v3}, Lcom/letv/leui/widget/LeListPreferenceView;->access$800(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView$3;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->listTitleColorNormal:I
    invoke-static {v3}, Lcom/letv/leui/widget/LeListPreferenceView;->access$900(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "checkbox":Landroid/view/View;
    instance-of v3, v0, Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPreferenceView$3;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    # getter for: Lcom/letv/leui/widget/LeListPreferenceView;->mClickedDialogEntryIndex:I
    invoke-static {v3}, Lcom/letv/leui/widget/LeListPreferenceView;->access$300(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v3

    if-ne p1, v3, :cond_2

    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-virtual {v0, v4, v4}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    :cond_1
    :goto_0
    return-object v2

    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_2
    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    .end local v0    # "checkbox":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
