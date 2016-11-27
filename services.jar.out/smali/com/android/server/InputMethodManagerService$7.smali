.class Lcom/android/server/InputMethodManagerService$7;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$hardKeySwitch:Lcom/letv/leui/widget/LeSwitch;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/letv/leui/widget/LeSwitch;)V
    .locals 0

    .prologue
    .line 3313
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$7;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$7;->val$hardKeySwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3316
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$7;->val$hardKeySwitch:Lcom/letv/leui/widget/LeSwitch;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$7;->val$hardKeySwitch:Lcom/letv/leui/widget/LeSwitch;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/letv/leui/widget/LeSwitch;->setChecked(ZZ)V

    .line 3317
    return-void

    .line 3316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
