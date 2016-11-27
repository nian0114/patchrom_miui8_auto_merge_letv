.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3591
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3592
    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 3593
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3596
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3609
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v6, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3610
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_4

    move v2, v4

    .line 3614
    .local v2, "isMncApp":Z
    :goto_0
    if-eqz v2, :cond_7

    .line 3615
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    if-ne p1, v6, :cond_5

    move v3, v4

    .line 3616
    .local v3, "isPrimary":Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v6

    if-ne p1, v6, :cond_6

    move v0, v4

    .line 3617
    .local v0, "isFloating":Z
    :goto_2
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 3618
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was not the current primary action mode! Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 3623
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was not the current floating action mode! Expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v6

    if-ne v6, v10, :cond_a

    move v1, v4

    .line 3634
    .local v1, "isLeFloating":Z
    :goto_4
    if-eqz v1, :cond_b

    .line 3635
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupLeFloatingActionModeViews()V
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3636
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v4, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 3681
    :cond_2
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3683
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3688
    :cond_3
    :goto_6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3689
    return-void

    .end local v0    # "isFloating":Z
    .end local v1    # "isLeFloating":Z
    .end local v2    # "isMncApp":Z
    .end local v3    # "isPrimary":Z
    :cond_4
    move v2, v5

    .line 3610
    goto/16 :goto_0

    .restart local v2    # "isMncApp":Z
    :cond_5
    move v3, v5

    .line 3615
    goto/16 :goto_1

    .restart local v3    # "isPrimary":Z
    :cond_6
    move v0, v5

    .line 3616
    goto/16 :goto_2

    .line 3628
    .end local v3    # "isPrimary":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v6

    if-nez v6, :cond_8

    move v3, v4

    .line 3629
    .restart local v3    # "isPrimary":Z
    :goto_7
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v6

    if-ne v6, v4, :cond_9

    move v0, v4

    .restart local v0    # "isFloating":Z
    :goto_8
    goto :goto_3

    .end local v0    # "isFloating":Z
    .end local v3    # "isPrimary":Z
    :cond_8
    move v3, v5

    .line 3628
    goto :goto_7

    .restart local v3    # "isPrimary":Z
    :cond_9
    move v0, v5

    .line 3629
    goto :goto_8

    .restart local v0    # "isFloating":Z
    :cond_a
    move v1, v5

    .line 3632
    goto :goto_4

    .line 3639
    .restart local v1    # "isLeFloating":Z
    :cond_b
    if-eqz v3, :cond_e

    .line 3640
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2400(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 3641
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3643
    :cond_c
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3644
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3645
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v5

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 3647
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3673
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 3676
    :cond_d
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;
    invoke-static {v4, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$302(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_5

    .line 3677
    :cond_e
    if-eqz v0, :cond_2

    .line 3678
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # invokes: Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V
    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3679
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;
    invoke-static {v4, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_5

    .line 3684
    :catch_0
    move-exception v4

    goto/16 :goto_6

    .line 3645
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    .line 3694
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3698
    :goto_0
    return-void

    .line 3696
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3601
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
