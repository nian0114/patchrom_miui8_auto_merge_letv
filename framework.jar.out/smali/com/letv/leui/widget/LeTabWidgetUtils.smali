.class public Lcom/letv/leui/widget/LeTabWidgetUtils;
.super Ljava/lang/Object;
.source "LeTabWidgetUtils.java"


# static fields
.field private static final SCALE_TAB_WIDTH_IF_1_TAB_ONLY:F = 3.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultFloatingView(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "floatIconId"    # I

    .prologue
    const v1, 0x10900e7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method public static createDefaultFloatingViewLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x40028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public static createFloatingIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "floatingView"    # Landroid/view/View;

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeTabWidgetUtils;->createIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .local v0, "normalView":Landroid/view/View;
    new-instance v2, Lcom/letv/leui/widget/LeOverflowTab;

    invoke-virtual {p1}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/letv/leui/widget/LeOverflowTab;-><init>(Landroid/content/Context;)V

    .local v2, "view":Lcom/letv/leui/widget/LeOverflowTab;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "params2":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeOverflowTab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v2, v0}, Lcom/letv/leui/widget/LeOverflowTab;->setNormalView(Landroid/view/View;)V

    invoke-virtual {v2, p4}, Lcom/letv/leui/widget/LeOverflowTab;->setFloatView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static createIndicatorView(Landroid/view/LayoutInflater;Landroid/widget/TabWidget;ILjava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    .local v2, "v":Landroid/view/View;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x1090083

    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "tv":Landroid/widget/TextView;
    :goto_1
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .end local v0    # "imgView":Landroid/widget/ImageView;
    :cond_2
    const v3, 0x1090082

    invoke-virtual {p0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method private static hasTitle(Landroid/widget/TabWidget;)Z
    .locals 6
    .param p0, "tw"    # Landroid/widget/TabWidget;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "tab":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "vGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-gt v5, v4, :cond_1

    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .end local v1    # "j":I
    .end local v2    # "tab":Landroid/view/View;
    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    :goto_2
    return v4

    .restart local v1    # "j":I
    .restart local v2    # "tab":Landroid/view/View;
    .restart local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "j":I
    .end local v2    # "tab":Landroid/view/View;
    .end local v3    # "vGroup":Landroid/view/ViewGroup;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bottomView"    # Landroid/widget/LinearLayout;
    .param p2, "hasTitle"    # Z

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V

    goto :goto_0
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tw"    # Landroid/widget/TabWidget;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;Z)V

    return-void
.end method

.method public static setTabWidgetLayout(Landroid/app/Activity;Landroid/widget/TabWidget;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tw"    # Landroid/widget/TabWidget;
    .param p2, "isDialerApp"    # Z

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->hasTitle(Landroid/widget/TabWidget;)Z

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V

    goto :goto_0
.end method

.method public static setTabWidgetLayout(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bottomView"    # Landroid/widget/LinearLayout;
    .param p2, "hasTitle"    # Z
    .param p3, "isDialerApp"    # Z

    .prologue
    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v5, "screenWidth":I
    const/4 v7, 0x0

    .local v7, "tabWidth":I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "end":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "tab":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v3, :cond_2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_2
    if-nez v2, :cond_4

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "tab":Landroid/view/View;
    :pswitch_0
    const v8, 0x1050132

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    mul-int v8, v7, v0

    sub-int v8, v5, v8

    div-int/lit8 v1, v8, 0x2

    goto :goto_1

    :pswitch_1
    const v8, 0x1050133

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    mul-int/lit8 v8, v7, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v1, v8, 0x2

    goto :goto_1

    :pswitch_2
    const v8, 0x1050134

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v8, v1, 0x2

    sub-int v8, v5, v8

    div-int/lit8 v7, v8, 0x3

    goto :goto_1

    :pswitch_3
    div-int/lit8 v7, v5, 0x4

    goto :goto_1

    :pswitch_4
    div-int/lit8 v7, v5, 0x5

    goto :goto_1

    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "tab":Landroid/view/View;
    :cond_3
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v0, -0x1

    if-ne v2, v8, :cond_5

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_5
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "tab":Landroid/view/View;
    :cond_6
    invoke-static {v4, p1}, Lcom/letv/leui/widget/LeTabWidgetUtils;->setTouchGlowWidth2HeightRatio(Landroid/content/res/Resources;Landroid/view/ViewGroup;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static setTouchGlowWidth2HeightRatio(Landroid/content/res/Resources;Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "vGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "childCnt":I
    const/high16 v3, 0x40000000    # 2.0f

    .local v3, "width2HeightRatio":F
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const v4, 0x10e00d9

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v4, v2, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/letv/leui/widget/LeGlowRelativeLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressScaleMultiple(F)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const v4, 0x10e00da

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    const v4, 0x10e00db

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    const v4, 0x10e00dc

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    const v4, 0x10e00dd

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    goto :goto_0

    .restart local v1    # "i":I
    :cond_6
    return-void
.end method
