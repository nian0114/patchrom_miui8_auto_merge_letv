.class Lcom/letv/leui/preference/LeEditTextPreference$3;
.super Ljava/lang/Object;
.source "LeEditTextPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeEditTextPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeEditTextPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    # getter for: Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z
    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->access$400(Lcom/letv/leui/preference/LeEditTextPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    # getter for: Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z
    invoke-static {v0}, Lcom/letv/leui/preference/LeEditTextPreference;->access$600(Lcom/letv/leui/preference/LeEditTextPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$3;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/letv/leui/preference/LeEditTextPreference;->ensureViewArea(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->access$700(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V

    :cond_0
    return-void
.end method
