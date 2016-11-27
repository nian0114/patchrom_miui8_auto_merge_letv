.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "LeListPreferenceListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$1;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method private clearPressedItem()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressed(Z)V

    const-string v0, "updateSelectorState"

    invoke-static {p0, v0, v1, v1}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .local v4, "id":J
    const-string v0, "mSelector"

    invoke-static {p0, v0}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .local v7, "mSelector":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$2;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x80
        0xff
    .end array-data
.end method

.method private setPressedItem(Landroid/view/View;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->layoutChildren()V

    new-array v0, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v6

    .local v0, "classes1":[Ljava/lang/Class;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .local v2, "objects1":[Ljava/lang/Object;
    new-array v1, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    const-class v4, Landroid/view/View;

    aput-object v4, v1, v5

    .local v1, "classes2":[Ljava/lang/Class;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p1, v3, v5

    .local v3, "objects2":[Ljava/lang/Object;
    const-string v4, "setSelectedPositionInt"

    invoke-static {p0, v4, v0, v2}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "positionSelector"

    invoke-static {p0, v4, v1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->refreshDrawableState()V

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x1

    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->clearPressedItem()V

    :cond_2
    if-eqz v4, :cond_7

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    :cond_3
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_1
    return v4

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;I)V

    const/4 v4, 0x1

    if-ne v0, v9, :cond_0

    invoke-direct {p0, v2, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
