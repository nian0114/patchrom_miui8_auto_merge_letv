.class public abstract Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;
.source "AbstractWheelTextAdapter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0xeeeeef

.field public static final DEFAULT_TEXT_SIZE:I = 0x14

.field protected static final NO_RESOURCE:I = 0x0

.field public static final TEXT_VIEW_ITEM_RESOURCE:I = -0x1


# instance fields
.field protected context:Landroid/content/Context;

.field protected emptyItemResourceId:I

.field protected inflater:Landroid/view/LayoutInflater;

.field protected isVertical:Z

.field private itemHeight:I

.field protected itemResourceId:I

.field protected itemTextResourceId:I

.field private strokeWidth:F

.field private textColor:I

.field private textSize:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemResource"    # I
    .param p3, "itemTextResource"    # I

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelAdapter;-><init>()V

    const v0, -0xeeeeef

    iput v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textColor:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->strokeWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->isVertical:Z

    iput-object p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    iput p2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    iput p3, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_1
    return-object p1
.end method

.method public getEmptyItemResource()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItemsCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    instance-of v2, p0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v2, :cond_6

    :cond_1
    if-nez p2, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    invoke-virtual {p0, v2, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    invoke-virtual {p0, p2, v2}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemHeight:I

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->configureTextView(Landroid/widget/TextView;)V

    move-object p2, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_5
    move-object v2, p2

    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_0
    return-object v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemResource()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return v0
.end method

.method protected abstract getItemText(I)Ljava/lang/CharSequence;
.end method

.method public getItemTextResource()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return v0
.end method

.method public getOritentaion()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->isVertical:Z

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->strokeWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textSize:I

    return v0
.end method

.method public getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textResource"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "text":Landroid/widget/TextView;
    if-nez p2, :cond_1

    :try_start_0
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0

    .end local v2    # "text":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "AbstractWheelAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, "textView":Landroid/widget/TextView;
    iget v1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmptyItemResource(I)V
    .locals 0
    .param p1, "emptyItemResourceId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->emptyItemResourceId:I

    return-void
.end method

.method public setItemResource(I)V
    .locals 0
    .param p1, "itemResourceId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemResourceId:I

    return-void
.end method

.method public setItemTextResource(I)V
    .locals 0
    .param p1, "itemTextResourceId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemTextResourceId:I

    return-void
.end method

.method public setOritentation(Z)V
    .locals 1
    .param p1, "isVertical"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->isVertical:Z

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->isVertical:Z

    if-eqz v0, :cond_0

    const v0, 0x10900ef

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    :goto_0
    const v0, 0x10200b4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setItemTextResource(I)V

    return-void

    :cond_0
    const v0, 0x10900ac

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setItemResource(I)V

    goto :goto_0
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->strokeWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textColor:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->textSize:I

    return-void
.end method

.method public setTextViewHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->itemHeight:I

    return-void
.end method
