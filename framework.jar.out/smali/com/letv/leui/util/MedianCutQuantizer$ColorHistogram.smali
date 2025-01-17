.class Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorHistogram"
.end annotation


# instance fields
.field colorArray:[I

.field countArray:[I


# direct methods
.method constructor <init>([I)V
    .locals 8
    .param p1, "pixelsOrig"    # [I

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    array-length v0, p1

    .local v0, "N":I
    new-array v5, v0, [I

    .local v5, "pixelsCpy":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    const v6, 0xffffff

    aget v7, p1, v2

    and-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    const/4 v3, -0x1

    .local v3, "k":I
    const/4 v1, -0x1

    .local v1, "curColor":I
    const/4 v2, 0x0

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    aget v6, v5, v2

    if-eq v6, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget v1, v5, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    .local v4, "nColors":I
    new-array v6, v4, [I

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    new-array v6, v4, [I

    iput-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    const/4 v3, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget v6, v5, v2

    if-eq v6, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    aget v1, v5, v2

    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    aput v1, v6, v3

    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    const/4 v7, 0x1

    aput v7, v6, v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    aget v7, v6, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v3

    goto :goto_3

    :cond_4
    return-void
.end method

.method constructor <init>([I[I)V
    .locals 1
    .param p1, "color"    # [I
    .param p2, "count"    # [I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    iput-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    iput-object p2, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    iput-object p1, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    return-void
.end method


# virtual methods
.method public getColor(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getColorArray()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    return-object v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCountArray()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->countArray:[I

    return-object v0
.end method

.method public getNumberOfColors()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorHistogram;->colorArray:[I

    array-length v0, v0

    goto :goto_0
.end method
