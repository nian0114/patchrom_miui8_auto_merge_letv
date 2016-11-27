.class public Lcom/letv/leui/util/MedianCutQuantizer;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;,
        Lcom/letv/leui/util/MedianCutQuantizer$bluComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$redComparator;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;,
        Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

.field private quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/util/MedianCutQuantizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([II)V
    .locals 1
    .param p1, "pixels"    # [I
    .param p2, "Kmax"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/MedianCutQuantizer;->findRepresentativeColors([II)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/util/MedianCutQuantizer;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/MedianCutQuantizer;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    return-object v0
.end method

.method private averageColors(Ljava/util/List;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;",
            ">;)[",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;"
        }
    .end annotation

    .prologue
    .local p1, "colorBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "n":I
    new-array v0, v4, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .local v0, "avgColors":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    .local v1, "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-virtual {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->getAverageColor()Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v5

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_0
    return-object v0
.end method

.method private findBoxToSplit(Ljava/util/List;)Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;",
            ">;)",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;"
        }
    .end annotation

    .prologue
    .local p1, "colorBoxes":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    const/4 v1, 0x0

    .local v1, "boxToSplit":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    const v3, 0x7fffffff

    .local v3, "minLevel":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    .local v0, "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-virtual {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->colorCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    if-ge v4, v3, :cond_0

    move-object v1, v0

    iget v3, v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->level:I

    goto :goto_0

    .end local v0    # "box":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public countQuantizedColors()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v0, v0

    return v0
.end method

.method findClosestColor(I)Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 2
    .param p1, "rgb"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/util/MedianCutQuantizer;->findClosestColorIndex(I)I

    move-result v0

    .local v0, "idx":I
    iget-object v1, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v1, v0

    return-object v1
.end method

.method findClosestColorIndex(I)I
    .locals 9
    .param p1, "rgb"    # I

    .prologue
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .local v7, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .local v3, "grn":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .local v0, "blu":I
    const/4 v6, 0x0

    .local v6, "minIdx":I
    const v5, 0x7fffffff

    .local v5, "minDistance":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    array-length v8, v8

    if-ge v4, v8, :cond_1

    iget-object v8, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    aget-object v1, v8, v4

    .local v1, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    invoke-virtual {v1, v7, v3, v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->distance2(III)I

    move-result v2

    .local v2, "d2":I
    if-ge v2, v5, :cond_0

    move v5, v2

    move v6, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .end local v2    # "d2":I
    :cond_1
    return v6
.end method

.method findRepresentativeColors([II)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 16
    .param p1, "pixels"    # [I
    .param p2, "Kmax"    # I

    .prologue
    new-instance v3, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;-><init>([I)V

    .local v3, "colorHist":Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;
    invoke-virtual {v3}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getNumberOfColors()I

    move-result v1

    .local v1, "K":I
    const/4 v11, 0x0

    .local v11, "rCols":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    new-array v13, v1, [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    invoke-virtual {v3, v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getColor(I)I

    move-result v12

    .local v12, "rgb":I
    invoke-virtual {v3, v6}, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->getCount(I)I

    move-result v2

    .local v2, "cnt":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    new-instance v14, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-direct {v14, v12, v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;-><init>(II)V

    aput-object v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2    # "cnt":I
    .end local v12    # "rgb":I
    :cond_0
    move/from16 v0, p2

    if-gt v1, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/util/MedianCutQuantizer;->imageColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    :goto_1
    return-object v11

    :cond_1
    new-instance v7, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    const/4 v13, 0x0

    add-int/lit8 v14, v1, -0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v13, v14, v15}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;-><init>(Lcom/letv/leui/util/MedianCutQuantizer;III)V

    .local v7, "initialBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "colorSet":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    .local v8, "k":I
    const/4 v5, 0x0

    .local v5, "done":Z
    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_3

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/letv/leui/util/MedianCutQuantizer;->findBoxToSplit(Ljava/util/List;)Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    move-result-object v10

    .local v10, "nextBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;->splitBox()Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;

    move-result-object v9

    .local v9, "newBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v9    # "newBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    .end local v10    # "nextBox":Lcom/letv/leui/util/MedianCutQuantizer$ColorBox;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/letv/leui/util/MedianCutQuantizer;->averageColors(Ljava/util/List;)[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v11

    goto :goto_1
.end method

.method public getQuantizedColors()[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer;->quantColors:[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    return-object v0
.end method

.method listColorNodes([Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)V
    .locals 8
    .param p1, "nodes"    # [Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v0, p1

    .local v0, "arr$":[Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    sget-object v5, Lcom/letv/leui/util/MedianCutQuantizer;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Color Node #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_0
    return-void
.end method

.method public quantizeImage([I)V
    .locals 5
    .param p1, "pixels"    # [I

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/letv/leui/util/MedianCutQuantizer;->findClosestColor(I)Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    move-result-object v0

    .local v0, "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    # getter for: Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->red:I
    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->access$000(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v2

    # getter for: Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I
    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->access$100(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v3

    # getter for: Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->blu:I
    invoke-static {v0}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->access$200(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "color":Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    :cond_0
    return-void
.end method
