.class Lcom/letv/leui/util/LeDomainManager$1;
.super Ljava/lang/Object;
.source "LeDomainManager.java"

# interfaces
.implements Lcom/letv/leui/util/LeDomainManager$DomainEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeDomainManager;->blockingGetRegionDomain(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/LeDomainManager;

.field final synthetic val$labels:[Ljava/lang/String;

.field final synthetic val$region:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/LeDomainManager;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/LeDomainManager$1;->this$0:Lcom/letv/leui/util/LeDomainManager;

    iput-object p2, p0, Lcom/letv/leui/util/LeDomainManager$1;->val$region:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/leui/util/LeDomainManager$1;->val$labels:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/letv/leui/util/LeDomainManager$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/letv/leui/util/LeDomainManager$Callback;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$1;->this$0:Lcom/letv/leui/util/LeDomainManager;

    iget-object v1, p0, Lcom/letv/leui/util/LeDomainManager$1;->val$region:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/util/LeDomainManager$1;->val$labels:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/letv/leui/util/LeDomainManager;->getDomainByRegion(Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V

    return-void
.end method
