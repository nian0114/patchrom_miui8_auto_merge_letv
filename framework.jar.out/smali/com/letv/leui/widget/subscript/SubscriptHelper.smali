.class public Lcom/letv/leui/widget/subscript/SubscriptHelper;
.super Ljava/lang/Object;
.source "SubscriptHelper.java"


# static fields
.field public static final ACTION_BAR_RIGHT_TOP:I = 0x1

.field public static final LE_BOTTOM_WIDGET_RIGHT_TOP:I = 0x2

.field static final TAG:Ljava/lang/String; = "SubscriptHelper"

.field public static final VIEW_INSIDE_LEFT_TOP:I = 0x5

.field public static final VIEW_OUTSIDE_LEFT_16DP:I = 0x7

.field public static final VIEW_OUTSIDE_LEFT_6DP:I = 0x3

.field public static final VIEW_OUTSIDE_RIGHT_TOP:I = 0x6

.field static sActionBarRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

.field static sLeBottomWidgetRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

.field static sViewInSideLeftTopMargin:Lcom/letv/leui/widget/subscript/Margin;

.field static sViewOutSideLeft16dpMargin:Lcom/letv/leui/widget/subscript/Margin;

.field static sViewOutSideLeft6dpMargin:Lcom/letv/leui/widget/subscript/Margin;

.field static sViewOutSideRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sActionBarRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sLeBottomWidgetRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft6dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft16dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewInSideLeftTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    return-void
.end method

.method public static add(Landroid/view/View;Landroid/view/View;ILcom/letv/leui/widget/subscript/SubscriptDrawable;)V
    .locals 8
    .param p0, "hostView"    # Landroid/view/View;
    .param p1, "relativeView"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "subscript"    # Lcom/letv/leui/widget/subscript/SubscriptDrawable;

    .prologue
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sActionBarRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .local v3, "x":I
    sget-object v5, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sActionBarRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v5, v5, Lcom/letv/leui/widget/subscript/Margin;->y:F

    float-to-int v4, v5

    .local v4, "y":I
    invoke-virtual {p3, v3}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setX(I)V

    invoke-virtual {p3, v4}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setY(I)V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v3    # "x":I
    .end local v4    # "y":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sLeBottomWidgetRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p3, v5}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setX(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p3, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sLeBottomWidgetRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->y:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p3, v5}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setY(I)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft6dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v1, v5

    .local v1, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p3, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .local v0, "middle":I
    invoke-virtual {p3, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setRight(I)V

    invoke-virtual {p3, v0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v0    # "middle":I
    .end local v1    # "right":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft16dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v1, v5

    .restart local v1    # "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p3, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .restart local v0    # "middle":I
    invoke-virtual {p3, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setRight(I)V

    invoke-virtual {p3, v0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v0    # "middle":I
    .end local v1    # "right":I
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v1, v5

    .restart local v1    # "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->y:F

    add-float/2addr v5, v6

    float-to-int v2, v5

    .local v2, "top":I
    invoke-virtual {p3, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setRight(I)V

    invoke-virtual {p3, v2}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .end local v1    # "right":I
    .end local v2    # "top":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewInSideLeftTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->x:F

    add-float/2addr v5, v6

    float-to-int v1, v5

    .restart local v1    # "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewInSideLeftTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    iget v6, v6, Lcom/letv/leui/widget/subscript/Margin;->y:F

    add-float/2addr v5, v6

    float-to-int v2, v5

    .restart local v2    # "top":I
    invoke-virtual {p3, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setRight(I)V

    invoke-virtual {p3, v2}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setTop(I)V

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static getSubscriptDrawable(Landroid/content/Context;I)Lcom/letv/leui/widget/subscript/SubscriptDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x2

    new-instance v0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;-><init>(Landroid/content/Context;)V

    .local v0, "mSubscript":Lcom/letv/leui/widget/subscript/SubscriptDrawable;
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setBasePoint(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setBasePoint(I)V

    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setBasePoint(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sActionBarRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sLeBottomWidgetRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft6dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {v0, v1, v4}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideLeft16dpMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewOutSideRightTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    new-instance v0, Lcom/letv/leui/widget/subscript/Margin;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/subscript/Margin;-><init>(FF)V

    sput-object v0, Lcom/letv/leui/widget/subscript/SubscriptHelper;->sViewInSideLeftTopMargin:Lcom/letv/leui/widget/subscript/Margin;

    return-void
.end method
