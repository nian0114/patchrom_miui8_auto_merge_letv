.class public Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "ArrayWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;"
    }
.end annotation


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;, "Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter<TT;>;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;, "Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter<TT;>;"
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .local v0, "item":Ljava/lang/Object;, "TT;"
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .restart local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;, "Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
