.class Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;
.super Ljava/lang/Object;
.source "MedianCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "grnComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I
    .locals 2
    .param p1, "colA"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;
    .param p2, "colB"    # Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    .prologue
    .line 375
    # getter for: Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I
    invoke-static {p1}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->access$100(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v0

    # getter for: Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->grn:I
    invoke-static {p2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;->access$100(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 373
    check-cast p1, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    check-cast p2, Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;->compare(Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;)I

    move-result v0

    return v0
.end method
