.class public Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "TextWheelAdapter.java"


# instance fields
.field private strContents:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strArray"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strArray"    # [Ljava/lang/String;
    .param p3, "isVertical"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->setOritentation(Z)V

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->getItemsCount()I

    move-result v0

    .local v0, "count":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len_start":I
    move v2, v3

    .local v2, "len_max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getStrContents()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    return-object v0
.end method

.method public setStrContents([Ljava/lang/String;)V
    .locals 0
    .param p1, "strContents"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    return-void
.end method
