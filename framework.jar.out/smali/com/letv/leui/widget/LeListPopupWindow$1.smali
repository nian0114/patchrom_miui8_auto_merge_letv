.class Lcom/letv/leui/widget/LeListPopupWindow$1;
.super Ljava/lang/Object;
.source "LeListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$1;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$1;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    # getter for: Lcom/letv/leui/widget/LeListPopupWindow;->mDropDownList:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/letv/leui/widget/LeListPopupWindow;->access$100(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    move-result-object v0

    .line 102
    .local v0, "dropDownList":Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->access$202(Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;Z)Z

    .line 106
    .end local v0    # "dropDownList":Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
