.class Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private hasIcon:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private key:[Ljava/lang/String;

.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;
    .param p4, "key"    # [Ljava/lang/String;
    .param p5, "hasIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p4, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->key:[Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    iput-boolean p5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->hasIcon:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const v6, -0xdc6a12

    const/4 v5, 0x0

    if-nez p2, :cond_3

    new-instance v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;

    invoke-direct {v1, p0, v4}, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;Lcom/letv/leui/widget/LeActionBarBottomSlider$1;)V

    .local v1, "temp":Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->hasIcon:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x1090097

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x1020405

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->icon:Landroid/widget/ImageView;

    const v2, 0x1020406

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    const v2, 0x1020407

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const v2, 0x1020408

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    :goto_0
    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeCheckBox;->setClickable(Z)V

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v3, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Lcom/letv/leui/widget/LeCheckBox;->attachAnimateToTextViewColor(Landroid/widget/TextView;I)V

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->hasIcon:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->key:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->icon:Landroid/widget/ImageView;

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_2
    iget-object v3, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v4, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->key:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$200(Lcom/letv/leui/widget/LeActionBarBottomSlider;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$200(Lcom/letv/leui/widget/LeActionBarBottomSlider;)I

    move-result v2

    if-eq v2, p1, :cond_6

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_4
    return-object p2

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x1090096

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x10203ff

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    const v2, 0x1020400

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const v2, 0x1020401

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    goto/16 :goto_0

    .end local v1    # "temp":Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;

    .restart local v1    # "temp":Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;
    goto/16 :goto_1

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->icon:Landroid/widget/ImageView;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget-object v3, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v4, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->key:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$200(Lcom/letv/leui/widget/LeActionBarBottomSlider;)I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v2, v7, v7}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v2, v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method
