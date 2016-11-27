.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeItemView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/widget/LeItemView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup;Lcom/letv/leui/widget/LeItemView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->val$this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v3, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->isAbove()Z

    move-result v3

    # setter for: Lcom/letv/leui/widget/LeItemView$DropdownPopup;->isAbove:Z
    invoke-static {v2, v3}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->access$602(Lcom/letv/leui/widget/LeItemView$DropdownPopup;Z)Z

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    # getter for: Lcom/letv/leui/widget/LeItemView$DropdownPopup;->promptView:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->access$700(Lcom/letv/leui/widget/LeItemView$DropdownPopup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    # getter for: Lcom/letv/leui/widget/LeItemView$DropdownPopup;->promptView:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->access$700(Lcom/letv/leui/widget/LeItemView$DropdownPopup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, "arrowView":Landroid/view/View;
    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v3, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/letv/leui/widget/LeItemView;->animateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    # getter for: Lcom/letv/leui/widget/LeItemView$DropdownPopup;->isAbove:Z
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->access$600(Lcom/letv/leui/widget/LeItemView$DropdownPopup;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView;->access$800(Lcom/letv/leui/widget/LeItemView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView;->access$800(Lcom/letv/leui/widget/LeItemView;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "arrowView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v3, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    # getter for: Lcom/letv/leui/widget/LeItemView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/letv/leui/widget/LeItemView;->access$800(Lcom/letv/leui/widget/LeItemView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .restart local v1    # "arrowView":Landroid/view/View;
    :cond_2
    const-string v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method
