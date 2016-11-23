.class Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "LeListPreferencePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferencePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;


# direct methods
.method public constructor <init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .line 1617
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1618
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1634
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1635
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1655
    :cond_0
    :goto_0
    return v1

    .line 1639
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1641
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1642
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1646
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1647
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1648
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1649
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    goto :goto_0

    .line 1653
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1655
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$900(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$900(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    const/4 v0, 0x1

    .line 1664
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1625
    .local v0, "drawableState":[I
    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$800()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1628
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1670
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1672
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1674
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    .line 1680
    :goto_0
    return v2

    .line 1676
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1677
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    goto :goto_0

    .line 1680
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$1000(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    # getter for: Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->access$1000(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
