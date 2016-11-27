.class final Lcom/letv/leui/widget/LeCheckBox$2;
.super Landroid/util/Property;
.source "LeCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/letv/leui/widget/LeCheckBox;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 572
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/letv/leui/widget/LeCheckBox;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;

    .prologue
    .line 575
    # getter for: Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I
    invoke-static {p1}, Lcom/letv/leui/widget/LeCheckBox;->access$100(Lcom/letv/leui/widget/LeCheckBox;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 572
    check-cast p1, Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeCheckBox$2;->get(Lcom/letv/leui/widget/LeCheckBox;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final set(Lcom/letv/leui/widget/LeCheckBox;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 583
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeCheckBox$2;->setValue(Lcom/letv/leui/widget/LeCheckBox;I)V

    .line 584
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 572
    check-cast p1, Lcom/letv/leui/widget/LeCheckBox;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeCheckBox$2;->set(Lcom/letv/leui/widget/LeCheckBox;Ljava/lang/Integer;)V

    return-void
.end method

.method public setValue(Lcom/letv/leui/widget/LeCheckBox;I)V
    .locals 0
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;
    .param p2, "value"    # I

    .prologue
    .line 579
    invoke-virtual {p1, p2}, Lcom/letv/leui/widget/LeCheckBox;->setDynimacRadius(I)V

    .line 580
    return-void
.end method
