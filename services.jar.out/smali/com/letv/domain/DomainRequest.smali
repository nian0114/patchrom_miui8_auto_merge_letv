.class public Lcom/letv/domain/DomainRequest;
.super Ljava/lang/Object;
.source "DomainRequest.java"


# instance fields
.field private services:Ljava/util/TreeSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServices()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "next":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v2    # "next":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public varargs setServices([Lcom/letv/domain/Service;)V
    .locals 6
    .param p1, "services"    # [Lcom/letv/domain/Service;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .local v4, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Lcom/letv/domain/Service;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "service":Lcom/letv/domain/Service;
    invoke-virtual {v3}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "service":Lcom/letv/domain/Service;
    :cond_0
    iput-object v4, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    return-void
.end method

.method public varargs setServices([Ljava/lang/String;)V
    .locals 1
    .param p1, "services"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .local v0, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/letv/domain/DomainRequest;->services:Ljava/util/TreeSet;

    return-void
.end method
