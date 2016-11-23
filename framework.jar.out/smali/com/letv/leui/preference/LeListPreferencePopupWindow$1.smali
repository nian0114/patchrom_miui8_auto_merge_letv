.class Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;
.super Ljava/lang/Object;
.source "LeListPreferencePopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferencePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 130
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$000(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$000(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 131
    .local v1, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$100(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$100(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 135
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$200(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$300(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I
    invoke-static {v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$400(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v5

    # invokes: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$500(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    # invokes: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->updateAboveAnchor(Z)V
    invoke-static {v7, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$600(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Z)V

    .line 137
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(IIIIZ)V

    .line 139
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 130
    .end local v1    # "anchor":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
