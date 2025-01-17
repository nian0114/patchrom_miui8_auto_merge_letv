.class Lcom/letv/leui/widget/LeSpinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "LeSpinner.java"

# interfaces
.implements Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/letv/leui/widget/LeSpinner;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-direct {p0, p2, p3, p4, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setModal(Z)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setPromptPosition(I)V

    new-instance v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;-><init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;Lcom/letv/leui/widget/LeSpinner;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$801(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    .prologue
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "hOffset":I
    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v3, v10, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->getPaddingLeft()I

    move-result v7

    .local v7, "spinnerPaddingLeft":I
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->getPaddingRight()I

    move-result v8

    .local v8, "spinnerPaddingRight":I
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->getWidth()I

    move-result v9

    .local v9, "spinnerWidth":I
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->getHeight()I

    move-result v6

    .local v6, "spinnerHeight":I
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget v10, v10, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v10, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lcom/letv/leui/widget/LeSpinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .local v1, "contentWidth":I
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$500(Lcom/letv/leui/widget/LeSpinner;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v2, v10, v11

    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    sub-int v10, v9, v7

    sub-int/2addr v10, v8

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setContentWidth(I)V

    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_1
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mMaxVisibleItem:I
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$600(Lcom/letv/leui/widget/LeSpinner;)I

    move-result v5

    .local v5, "maxVisibleItem":I
    if-lez v5, :cond_1

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v10, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v10, v12, v5}, Lcom/letv/leui/widget/LeSpinner;->measureContentHeight(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;I)I

    move-result v4

    .local v4, "height":I
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setContentHeight(I)V

    .end local v4    # "height":I
    :cond_1
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v10}, Lcom/letv/leui/widget/LeSpinner;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_6

    sub-int v10, v9, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v3, v10

    :goto_2
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setHorizontalOffset(I)V

    return-void

    .end local v5    # "maxVisibleItem":I
    .end local v6    # "spinnerHeight":I
    .end local v7    # "spinnerPaddingLeft":I
    .end local v8    # "spinnerPaddingRight":I
    .end local v9    # "spinnerWidth":I
    :cond_2
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v3, v10

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v11

    const/4 v12, 0x0

    iput v12, v11, Landroid/graphics/Rect;->right:I

    iput v12, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .restart local v6    # "spinnerHeight":I
    .restart local v7    # "spinnerPaddingLeft":I
    .restart local v8    # "spinnerPaddingRight":I
    .restart local v9    # "spinnerWidth":I
    :cond_4
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget v10, v10, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    sub-int v10, v9, v7

    sub-int/2addr v10, v8

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget v10, v10, Lcom/letv/leui/widget/LeSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .restart local v5    # "maxVisibleItem":I
    :cond_6
    add-int/2addr v3, v7

    goto :goto_2
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setContentHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mPopup:Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner;->access$100(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    # getter for: Lcom/letv/leui/widget/LeSpinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/letv/leui/widget/LeSpinner;->access$400(Lcom/letv/leui/widget/LeSpinner;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setHeight(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setHeight(I)V

    goto :goto_0
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->isShowing()Z

    move-result v3

    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->computeContentWidth()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setSelection(I)V

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    new-instance v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$2;-><init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V

    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v4, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;-><init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
