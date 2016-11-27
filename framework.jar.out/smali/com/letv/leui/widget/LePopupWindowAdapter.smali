.class public Lcom/letv/leui/widget/LePopupWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "LePopupWindowAdapter.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;,
        Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    }
.end annotation


# static fields
.field public static final DOUBLETEXTVIEW_CHECKBOX:I = 0xb

.field public static final DOUBLETEXTVIEW_EMPTY:I = 0xa

.field public static final DOUBLETEXTVIEW_IMG:I = 0xc

.field public static final DOUBLETEXTVIEW_SWTICH:I = 0xd

.field public static final LAYOUTTYPE_MAXNUM:I = 0x14

.field public static final SINGLETEXTVIEW_CHECKBOX:I = 0x1

.field public static final SINGLETEXTVIEW_EMPTY:I = 0x0

.field public static final SINGLETEXTVIEW_MULTI_CHECKBOX:I = 0x2

.field private static hasDoubleTxItem:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mItems:[Ljava/lang/CharSequence;

.field private mLayoutType:I

.field private mTypeNum:I

.field private myList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "typeNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;>;"
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 47
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    .line 52
    if-gt p3, v1, :cond_1

    .line 53
    iput v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    .line 58
    :goto_0
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    return-void

    .line 55
    :cond_1
    const/16 v0, 0x14

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mItems"    # [Ljava/lang/CharSequence;
    .param p3, "layoutType"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 65
    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 66
    iput p3, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    .line 69
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 401
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 402
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 366
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 371
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dividerPaddingColor()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 391
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 326
    iget v2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 327
    iget v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mLayoutType:I

    .line 331
    :goto_0
    return v1

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    .line 330
    .local v0, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getType()I

    move-result v1

    .line 331
    .local v1, "type":I
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const v11, -0xdc6a12

    const/high16 v10, 0x41940000    # 18.5f

    const/high16 v9, 0x41700000    # 15.0f

    const v8, -0xbebebf

    const/4 v7, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->notifyDataSetChanged()V

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, "textString":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 104
    .local v1, "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->myList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    .line 106
    .restart local v1    # "msg":Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LePopupWindowAdapter;->getItemViewType(I)I

    move-result v3

    .line 112
    .local v3, "type":I
    const/4 v0, 0x0

    .line 114
    .local v0, "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    if-nez p2, :cond_7

    .line 115
    sparse-switch v3, :sswitch_data_0

    .line 314
    :goto_1
    return-object p2

    .line 109
    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .end local v3    # "type":I
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mItems:[Ljava/lang/CharSequence;

    aget-object v2, v4, p1

    goto :goto_0

    .line 117
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    .restart local v3    # "type":I
    :sswitch_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 118
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 119
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900c0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    const v4, 0x1020484

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 121
    const v4, 0x1020485

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$102(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 122
    const v4, 0x1020486

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 124
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$100(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 128
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_1
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 138
    :sswitch_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 139
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 140
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900c0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    const v4, 0x1020484

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 143
    const v4, 0x1020485

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$102(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 144
    const v4, 0x1020486

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 145
    const v4, 0x1020487

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeSwitch;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$302(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeSwitch;)Lcom/letv/leui/widget/LeSwitch;

    .line 147
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 148
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$300(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/LeSwitch;->setVisibility(I)V

    .line 149
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$100(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$300(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    .line 152
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$300(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/letv/leui/widget/LeSwitch;->setTrackColor(I)V

    .line 154
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 160
    :sswitch_2
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 161
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900c3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 162
    const v4, 0x1020484

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 163
    const v4, 0x1020486

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 165
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 166
    if-eqz v1, :cond_2

    .line 167
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_3
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_3

    .line 172
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 177
    :goto_4
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 169
    :cond_2
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :cond_3
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 183
    :sswitch_3
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 184
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900c3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 185
    const v4, 0x1020484

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 186
    const v4, 0x1020486

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 188
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 191
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_4

    .line 192
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 197
    :goto_5
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 198
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 194
    :cond_4
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 200
    :cond_5
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 207
    :sswitch_4
    new-instance v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;-><init>(Lcom/letv/leui/widget/LePopupWindowAdapter;)V

    .line 208
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    iget-object v4, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x10900c2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 209
    const v4, 0x1020484

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$002(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 210
    const v4, 0x1020486

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeCheckBox;

    # setter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0, v4}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$202(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 212
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 215
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 217
    :cond_6
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 227
    :cond_7
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_1

    .line 254
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 255
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    if-eqz v1, :cond_9

    .line 256
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_8
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_a

    .line 261
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    :goto_9
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 229
    :sswitch_6
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 231
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$100(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 235
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 236
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 238
    :cond_8
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 243
    :sswitch_7
    const/4 v4, 0x1

    sput-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 245
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvSubText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$100(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getSubText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->lsSweitch:Lcom/letv/leui/widget/LeSwitch;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$300(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeSwitch;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeSwitch;->setChecked(Z)V

    .line 249
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 258
    :cond_9
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 263
    :cond_a
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_9

    .line 272
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 273
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getMainText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 276
    sget-boolean v4, Lcom/letv/leui/widget/LePopupWindowAdapter;->hasDoubleTxItem:Z

    if-eqz v4, :cond_b

    .line 277
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 282
    :goto_a
    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 283
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 279
    :cond_b
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v5

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_a

    .line 285
    :cond_c
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 291
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    check-cast v0, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;

    .line 292
    .restart local v0    # "holder":Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->cbCheckBox:Lcom/letv/leui/widget/LeCheckBox;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$200(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 295
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    :goto_b
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 297
    :cond_d
    # getter for: Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->tvMainText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;->access$000(Lcom/letv/leui/widget/LePopupWindowAdapter$ViewHolderDoubleTextChbox;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0xb -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch

    .line 227
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_9
        0xb -> :sswitch_6
        0xd -> :sswitch_7
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter;->mTypeNum:I

    return v0
.end method

.method public leftDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 381
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupWindowAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method
