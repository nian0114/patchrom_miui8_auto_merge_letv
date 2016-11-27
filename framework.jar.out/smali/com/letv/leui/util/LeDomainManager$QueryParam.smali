.class Lcom/letv/leui/util/LeDomainManager$QueryParam;
.super Ljava/lang/Object;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeDomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryParam"
.end annotation


# instance fields
.field private labels:[Ljava/lang/String;

.field mCallback:Lcom/letv/leui/util/LeDomainManager$Callback;

.field mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMarker:Ljava/lang/String;

.field mMethod:Ljava/lang/String;

.field final synthetic this$0:Lcom/letv/leui/util/LeDomainManager;


# direct methods
.method public varargs constructor <init>(Lcom/letv/leui/util/LeDomainManager;Ljava/lang/String;Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V
    .locals 1
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "marker"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/letv/leui/util/LeDomainManager$Callback;
    .param p5, "labels"    # [Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->this$0:Lcom/letv/leui/util/LeDomainManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMethod:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mCallback:Lcom/letv/leui/util/LeDomainManager$Callback;

    .line 232
    iput-object p5, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->labels:[Ljava/lang/String;

    .line 233
    invoke-static {p5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 234
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mLabels:Ljava/util/List;

    .line 235
    return-void
.end method


# virtual methods
.method public createToken()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "marker ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] labels "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/util/LeDomainManager$QueryParam;->labels:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
