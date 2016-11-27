.class Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;
.super Ljava/lang/Object;
.source "LeImmersiveStatusBarManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnWindowFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;


# direct methods
.method private constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
    .param p2, "x1"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;-><init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    .line 189
    .local v0, "focusChangeTime":J
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isCheck:Z
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$200(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # invokes: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar()Z
    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$400(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v3

    # setter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar:Z
    invoke-static {v2, v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$302(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Z)Z

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isCheck:Z
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$200(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$500(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$600(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    # setter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2, v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$502(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$500(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->myOnWindowFocusChangeListener:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;
    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$700(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 197
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar:Z
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$300(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mPickerColorUtils:Lcom/letv/leui/util/statusbar/PickerColorUtils;
    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$800(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/PickerColorUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    # getter for: Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;
    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->access$600(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->SetStatusBarColor(Landroid/view/View;I)V

    .line 206
    :cond_2
    return-void
.end method
