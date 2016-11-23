.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
.super Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field arrowDrawable:Landroid/graphics/drawable/Drawable;

.field private isAbove:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field overlayDrawable:Landroid/graphics/drawable/Drawable;

.field promptView:Landroid/view/View;

.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method public constructor <init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    .line 890
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    .line 891
    const v1, 0x10102ff

    invoke-direct {p0, p2, p3, v1, p4}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 884
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    .line 893
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setModal(Z)V

    .line 894
    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 921
    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/letv/leui/preference/LeListPreference;->messageView:Landroid/view/View;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$200(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 923
    invoke-virtual {p1}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900ce

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    .line 925
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setPromptView(Landroid/view/View;)V

    .line 927
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 928
    .local v0, "overlayTitle":Landroid/widget/TextView;
    # getter for: Lcom/letv/leui/preference/LeListPreference;->listTitleColorSelected:I
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$800(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    if-ltz v1, :cond_0

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v1

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 930
    # getter for: Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$500(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 931
    # getter for: Lcom/letv/leui/preference/LeListPreference;->mMessages:[Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$500(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$600(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    new-instance v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;

    invoke-direct {v2, p0, p1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$2;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 947
    .end local v0    # "overlayTitle":Landroid/widget/TextView;
    :cond_1
    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$3;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Lcom/letv/leui/preference/LeListPreference;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V

    .line 979
    return-void

    .line 933
    .restart local v0    # "overlayTitle":Landroid/widget/TextView;
    :cond_2
    # getter for: Lcom/letv/leui/preference/LeListPreference;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$300(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mValue:Ljava/lang/String;
    invoke-static {p1}, Lcom/letv/leui/preference/LeListPreference;->access$600(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    .param p1, "x1"    # Z

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isAbove:Z

    return p1
.end method


# virtual methods
.method measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 995
    if-nez p1, :cond_1

    .line 996
    const/4 v8, 0x0

    .line 1030
    :cond_0
    :goto_0
    return v8

    .line 999
    :cond_1
    const/4 v8, 0x0

    .line 1000
    .local v8, "width":I
    const/4 v5, 0x0

    .line 1001
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 1002
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1003
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1005
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1006
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1007
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 1008
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1009
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 1010
    invoke-interface {p1, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 1011
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 1012
    move v4, v6

    .line 1013
    const/4 v5, 0x0

    .line 1016
    :cond_2
    const/4 v10, 0x0

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1017
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1018
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 1022
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1009
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1025
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 1026
    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1027
    iget-object v10, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public preBuildListView(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    .line 989
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->preBuildListView(Landroid/widget/ListView;)V

    .line 990
    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 991
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 992
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 983
    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 984
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 985
    return-void
.end method

.method public show()V
    .locals 17

    .prologue
    .line 1037
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-virtual {v14}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1080570

    invoke-virtual {v14, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1039
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 1041
    .local v7, "hOffset":I
    if-eqz v4, :cond_8

    .line 1042
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1800(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    iget v7, v14, Landroid/graphics/Rect;->right:I

    .line 1048
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1049
    .local v1, "anchorViewPaddingLeft":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1050
    .local v2, "anchorViewPaddingRight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1054
    .local v3, "anchorViewWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$2000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x2

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$2000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 1055
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->measureContentWidth(Landroid/widget/ListAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1056
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-virtual {v14}, Lcom/letv/leui/preference/LeListPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v6, v14, v15

    .line 1058
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_1

    .line 1059
    move v5, v6

    .line 1061
    :cond_1
    sub-int v14, v3, v1

    sub-int/2addr v14, v2

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setContentWidth(I)V

    .line 1068
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->lePopGravity:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1800(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_a

    .line 1069
    sub-int v14, v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    add-int/2addr v7, v14

    .line 1074
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setHorizontalOffset(I)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    if-eqz v14, :cond_2

    .line 1077
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$2000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/high16 v15, -0x80000000

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1078
    .local v13, "widthSpec":I
    const/4 v8, 0x0

    .line 1079
    .local v8, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {v14, v13, v8}, Landroid/view/View;->measure(II)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->promptView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    neg-int v11, v14

    .line 1081
    .local v11, "verticalOffset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setVerticalOffset(I)V

    .line 1084
    .end local v8    # "heightSpec":I
    .end local v11    # "verticalOffset":I
    .end local v13    # "widthSpec":I
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setInputMethodMode(I)V

    .line 1086
    const-string v14, "mPopup"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .line 1088
    .local v9, "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    if-eqz v9, :cond_3

    .line 1089
    const-string v14, "mAboveAnchorBackgroundDrawable"

    const/4 v15, 0x0

    invoke-static {v9, v14, v15}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1092
    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1095
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->popBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$2100(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1098
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$700(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$700(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->listViewSelector:I
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$700(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setSelector(I)V

    .line 1104
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setSelection(I)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # invokes: Lcom/letv/leui/preference/LeListPreference;->getValueIndex()I
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$400(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1900(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 1111
    .local v12, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v12, :cond_6

    .line 1112
    new-instance v10, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$4;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V

    .line 1128
    .local v10, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v12, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1130
    new-instance v14, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V

    .line 1180
    .end local v10    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_6
    return-void

    .line 1043
    .end local v1    # "anchorViewPaddingLeft":I
    .end local v2    # "anchorViewPaddingRight":I
    .end local v3    # "anchorViewWidth":I
    .end local v9    # "innerPopup":Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    .end local v12    # "vto":Landroid/view/ViewTreeObserver;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    neg-int v7, v14

    goto/16 :goto_0

    .line 1045
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v15}, Lcom/letv/leui/preference/LeListPreference;->access$1700(Lcom/letv/leui/preference/LeListPreference;)Landroid/graphics/Rect;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v0, v16

    iput v0, v14, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 1063
    .restart local v1    # "anchorViewPaddingLeft":I
    .restart local v2    # "anchorViewPaddingRight":I
    .restart local v3    # "anchorViewWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # getter for: Lcom/letv/leui/preference/LeListPreference;->mDropDownWidth:I
    invoke-static {v14}, Lcom/letv/leui/preference/LeListPreference;->access$2000(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->setContentWidth(I)V

    goto/16 :goto_1

    .line 1071
    :cond_a
    add-int/2addr v7, v1

    goto/16 :goto_2
.end method
