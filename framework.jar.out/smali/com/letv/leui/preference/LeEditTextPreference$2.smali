.class Lcom/letv/leui/preference/LeEditTextPreference$2;
.super Ljava/lang/Object;
.source "LeEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeEditTextPreference;->getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;
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
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference$2;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$2;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->access$402(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$2;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    # invokes: Lcom/letv/leui/preference/LeEditTextPreference;->clearFocus(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->access$500(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference$2;->this$0:Lcom/letv/leui/preference/LeEditTextPreference;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->access$402(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z

    return-void
.end method
