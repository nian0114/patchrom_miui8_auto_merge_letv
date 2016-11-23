.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field final synthetic val$this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->val$this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 950
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v3}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove()Z

    move-result v3

    # setter for: Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z
    invoke-static {v2, v3}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->access$1502(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Z)Z

    .line 951
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 952
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 955
    .local v1, "arrowView":Landroid/view/View;
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/letv/leui/preference/LeListPreference;->animateDrawable:Landroid/graphics/drawable/Drawable;

    .line 958
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    # getter for: Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->access$1500(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 959
    const-string v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 963
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 964
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 966
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->access$1600(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->access$1600(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 970
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "arrowView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 971
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->access$1600(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 972
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->arrow:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->access$1600(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 976
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 961
    .restart local v1    # "arrowView":Landroid/view/View;
    :cond_2
    const-string v2, "rotation"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 959
    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 961
    :array_1
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data
.end method
