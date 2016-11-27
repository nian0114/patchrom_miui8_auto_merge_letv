.class Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeBottomSheet.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;,
        Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;
    }
.end annotation


# instance fields
.field private WithTailImg:Z

.field private actionBarColor:I

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

.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;I)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;
    .param p4, "key"    # [Ljava/lang/String;
    .param p5, "actionBarColor"    # I
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1426
    iput-object p4, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    .line 1427
    iput-object p3, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    .line 1428
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1429
    iput p5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->actionBarColor:I

    .line 1430
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;ZZ)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;
    .param p4, "key"    # [Ljava/lang/String;
    .param p5, "hasIcon"    # Z
    .param p6, "WithTailImg"    # Z
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
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1417
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1418
    iput-object p4, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    .line 1419
    iput-object p3, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    .line 1420
    iput-boolean p5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->hasIcon:Z

    .line 1421
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1422
    iput-boolean p6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->WithTailImg:Z

    .line 1423
    return-void
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    .prologue
    .line 1393
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->hasIcon:Z

    return v0
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 1705
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->access$2900(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1706
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getTextColor()I
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->showMode:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->access$2200(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, -0x1a000001

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 1673
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1678
    const/4 v0, 0x0

    return v0
.end method

.method public dividerPaddingColor()I
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x0

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1694
    const/4 v0, 0x0

    .line 1696
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1444
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1449
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->slideFromTop:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1300(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1451
    if-nez p2, :cond_3

    .line 1452
    new-instance v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;-><init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;Lcom/letv/leui/widget/LeBottomSheet$1;)V

    .line 1453
    .local v1, "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1454
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x109009d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1460
    :goto_0
    const v5, 0x10203ff

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    .line 1461
    const v5, 0x1020401

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 1462
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setClickable(Z)V

    .line 1463
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1500(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1464
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->actionBarColor:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/letv/leui/widget/LeCheckBox;->setTrackBoxColor(II)V

    .line 1466
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1470
    :goto_1
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 1471
    iget-object v6, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 1473
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->usePressEffect:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1500(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1474
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1475
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    const v6, -0xdc6a12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_2
    move-object v0, p2

    .line 1646
    .end local v1    # "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "convertView":Landroid/view/View;
    :goto_3
    return-object v0

    .line 1456
    .end local v0    # "convertView":Landroid/view/View;
    .restart local v1    # "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x109009c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1457
    const v5, 0x1020418

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 1458
    const v5, 0x1020419

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1468
    .end local v1    # "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    goto :goto_1

    .line 1477
    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 1478
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1479
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    const v6, -0xbebebf

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 1482
    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkList:Ljava/util/List;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$300(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1483
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1487
    :goto_4
    iget-object v6, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1488
    iget-object v6, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1489
    iget-object v6, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1485
    :cond_6
    iget-object v5, v1, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_4

    .line 1494
    .end local v1    # "holder":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$ViewHolder;
    :cond_7
    if-nez p2, :cond_12

    .line 1495
    new-instance v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;Lcom/letv/leui/widget/LeBottomSheet$1;)V

    .line 1496
    .local v4, "temp":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;
    iget-boolean v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->hasIcon:Z

    if-eqz v5, :cond_11

    .line 1497
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x1090097

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1498
    const v5, 0x1020405

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->icon:Landroid/widget/ImageView;

    .line 1499
    const v5, 0x1020403

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->divideline:Landroid/widget/ImageView;

    .line 1500
    const v5, 0x1020406

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    .line 1501
    const v5, 0x1020407

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    .line 1502
    const v5, 0x1020408

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 1504
    const v5, 0x1020409

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    .line 1506
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->divideline:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1507
    const v5, 0x1020404

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->layout:Landroid/widget/LinearLayout;

    .line 1519
    :goto_5
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setClickable(Z)V

    .line 1521
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1700(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1800(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 1522
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$1700(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOffColor:I
    invoke-static {v7}, Lcom/letv/leui/widget/LeBottomSheet;->access$1800(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/letv/leui/widget/LeCheckBox;->setTrackBoxColor(II)V

    .line 1524
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1900(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    .line 1525
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxArrowColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$1900(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setArrowColor(I)V

    .line 1527
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2000(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 1528
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->boxBorderColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2000(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setBoxBorderColor(I)V

    .line 1535
    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->animateToTextViewColor:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2100(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->showMode:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2200(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_b

    .line 1536
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I
    invoke-static {v7}, Lcom/letv/leui/widget/LeBottomSheet;->access$2300(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/letv/leui/widget/LeCheckBox;->attachAnimateToTextViewColor(Landroid/widget/TextView;I)V

    .line 1538
    :cond_b
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1543
    :goto_6
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->showMode:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2200(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_c

    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->layout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_c

    .line 1544
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->layout:Landroid/widget/LinearLayout;

    const v6, 0x1080521

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1547
    :cond_c
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1548
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 1549
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    .line 1552
    :cond_d
    iget-boolean v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->hasIcon:Z

    if-eqz v5, :cond_14

    .line 1553
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1555
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    .line 1557
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v6, 0x0

    # setter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v5, v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2402(Lcom/letv/leui/widget/LeBottomSheet;Z)Z

    .line 1558
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1559
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_13

    .line 1560
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1561
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2500(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1563
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1584
    :cond_e
    :goto_7
    const/4 v2, 0x0

    .line 1585
    .local v2, "isUnableItem":Z
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1586
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x4a000000    # 2097152.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1587
    const/4 v2, 0x1

    .line 1593
    :goto_8
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    if-ne p1, v5, :cond_f

    if-nez v2, :cond_f

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2400(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v6

    if-ne v5, v6, :cond_f

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1594
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    const v6, -0xdc6a12

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1598
    :cond_f
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1599
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v2, :cond_10

    .line 1600
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1605
    :cond_10
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2400(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1606
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setVisibility(I)V

    move-object v0, p2

    .line 1607
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_3

    .line 1509
    .end local v0    # "convertView":Landroid/view/View;
    .end local v2    # "isUnableItem":Z
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_11
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x1090096

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1510
    const v5, 0x10203ff

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    .line 1511
    const v5, 0x1020400

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    .line 1512
    const v5, 0x1020401

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 1514
    const v5, 0x1020402

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/LeCheckBox;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    .line 1516
    const v5, 0x10203fe

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->layout:Landroid/widget/LinearLayout;

    goto/16 :goto_5

    .line 1540
    .end local v4    # "temp":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;

    .restart local v4    # "temp":Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;
    goto/16 :goto_6

    .line 1565
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_13
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1569
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_14
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    .line 1572
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v6, 0x0

    # setter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v5, v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2402(Lcom/letv/leui/widget/LeBottomSheet;Z)Z

    .line 1573
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1574
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_15

    .line 1575
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1576
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "obj":Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->tailTextColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2500(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1578
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->data:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->key:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1580
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_15
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->tailImg:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1590
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v2    # "isUnableItem":Z
    :cond_16
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->getTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1591
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1611
    :cond_17
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2400(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v6

    if-ne v5, v6, :cond_18

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_18

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1612
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    if-eq v5, p1, :cond_1b

    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1613
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1628
    :cond_18
    :goto_9
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkIsOn:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2400(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isSinglebox:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1629
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkedIndexList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1630
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1631
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1700(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1e

    const v5, -0xdc6a12

    :goto_a
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1641
    :cond_19
    :goto_b
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$900(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 1642
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->mLeBotOnClickListener:Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$900(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    move-result-object v5

    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v6

    invoke-interface {v5, p1, v6}, Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;->onCheckedClick(IZ)V

    :cond_1a
    move-object v0, p2

    .line 1646
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "convertView":Landroid/view/View;
    goto/16 :goto_3

    .line 1614
    .end local v0    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1b
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$100(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    if-ne p1, v5, :cond_18

    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1615
    if-eqz v2, :cond_1c

    .line 1616
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_9

    .line 1618
    :cond_1c
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1619
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    const v6, -0xdc6a12

    if-eq v5, v6, :cond_1d

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1621
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->ListItemColor:I
    invoke-static {v6}, Lcom/letv/leui/widget/LeBottomSheet;->access$2300(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setArrowColorWithoutBorder(I)V

    goto/16 :goto_9

    .line 1622
    :cond_1d
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->isChangeItemColor:Z
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2700(Lcom/letv/leui/widget/LeBottomSheet;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1623
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->leCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setArrowColorWithoutBorder(I)V

    goto/16 :goto_9

    .line 1631
    :cond_1e
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->checkBoxOnColor:I
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$1700(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v5

    goto :goto_a

    .line 1634
    :cond_1f
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->box_border:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 1635
    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-nez v2, :cond_20

    .line 1636
    iget-object v6, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->itemColorMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/letv/leui/widget/LeBottomSheet;->access$2800(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 1637
    :cond_20
    if-nez v2, :cond_19

    .line 1638
    iget-object v5, v4, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->getTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1655
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->unableItemIndex:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/widget/LeBottomSheet;->access$2600(Lcom/letv/leui/widget/LeBottomSheet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1658
    const/4 v1, 0x0

    .line 1662
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1656
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_1
.end method

.method public leftDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1683
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1688
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 1668
    const/4 v0, 0x0

    return v0
.end method
