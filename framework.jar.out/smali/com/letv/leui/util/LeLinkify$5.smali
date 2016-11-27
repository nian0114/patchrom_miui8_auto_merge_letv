.class final Lcom/letv/leui/util/LeLinkify$5;
.super Ljava/lang/Object;
.source "LeLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/letv/leui/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/letv/leui/util/LinkSpec;Lcom/letv/leui/util/LinkSpec;)I
    .locals 4
    .param p1, "a"    # Lcom/letv/leui/util/LinkSpec;
    .param p2, "b"    # Lcom/letv/leui/util/LinkSpec;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 677
    iget v2, p1, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v3, p2, Lcom/letv/leui/util/LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v0

    .line 681
    :cond_1
    iget v2, p1, Lcom/letv/leui/util/LinkSpec;->start:I

    iget v3, p2, Lcom/letv/leui/util/LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 682
    goto :goto_0

    .line 685
    :cond_2
    iget v2, p1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v3, p2, Lcom/letv/leui/util/LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 686
    goto :goto_0

    .line 689
    :cond_3
    iget v1, p1, Lcom/letv/leui/util/LinkSpec;->end:I

    iget v2, p2, Lcom/letv/leui/util/LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 693
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 675
    check-cast p1, Lcom/letv/leui/util/LinkSpec;

    check-cast p2, Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/LeLinkify$5;->compare(Lcom/letv/leui/util/LinkSpec;Lcom/letv/leui/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method
