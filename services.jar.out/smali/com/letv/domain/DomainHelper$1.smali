.class Lcom/letv/domain/DomainHelper$1;
.super Ljava/lang/Object;
.source "DomainHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/domain/DomainHelper;->requestOverseaServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/domain/DomainHelper;


# direct methods
.method constructor <init>(Lcom/letv/domain/DomainHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/domain/DomainHelper$1;->this$0:Lcom/letv/domain/DomainHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/letv/domain/DomainHelper$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    iget-object v0, p0, Lcom/letv/domain/DomainHelper$1;->this$0:Lcom/letv/domain/DomainHelper;

    # invokes: Lcom/letv/domain/DomainHelper;->handleSuccessResponse(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/letv/domain/DomainHelper;->access$000(Lcom/letv/domain/DomainHelper;Lorg/json/JSONObject;)V

    return-void
.end method
