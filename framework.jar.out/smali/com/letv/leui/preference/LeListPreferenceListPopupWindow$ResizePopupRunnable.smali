.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    .param p2, "x1"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    iget v1, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPopup:Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$1000(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    :cond_0
    return-void
.end method
