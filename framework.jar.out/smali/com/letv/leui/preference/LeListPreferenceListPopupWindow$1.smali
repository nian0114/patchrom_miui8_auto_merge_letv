.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbove(Z)V
    .locals 1
    .param p1, "above"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mPromptView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$500(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->updatePromptView(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    iput-boolean p1, v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isAbove:Z

    :cond_0
    return-void
.end method
