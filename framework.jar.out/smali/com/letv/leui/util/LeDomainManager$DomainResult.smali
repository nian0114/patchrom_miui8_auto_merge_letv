.class Lcom/letv/leui/util/LeDomainManager$DomainResult;
.super Ljava/lang/Object;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeDomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DomainResult"
.end annotation


# instance fields
.field exception:Ljava/lang/Exception;

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/letv/leui/util/LeDomainManager;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/LeDomainManager;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/letv/leui/util/LeDomainManager$DomainResult;->this$0:Lcom/letv/leui/util/LeDomainManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hasException()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$DomainResult;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
