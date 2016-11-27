.class Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/operator/op01/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStateListener"
.end annotation


# instance fields
.field protected mSubId:I

.field final synthetic this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;I)V
    .locals 1
    .param p2, "subId"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->mSubId:I

    iput p2, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->mSubId:I

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const-string v1, "@M_CDS/ConnectivityServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nw type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v3}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$400(Lcom/android/server/operator/op01/ConnectivityServiceExt;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_0

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$400(Lcom/android/server/operator/op01/ConnectivityServiceExt;)I

    move-result v1

    if-le v1, v4, :cond_2

    if-ge p2, v5, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$400(Lcom/android/server/operator/op01/ConnectivityServiceExt;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$400(Lcom/android/server/operator/op01/ConnectivityServiceExt;)I

    move-result v1

    if-ge v1, v5, :cond_4

    if-le p2, v4, :cond_4

    :cond_3
    const-string v1, "@M_CDS/ConnectivityServiceExt"

    const-string v2, "Send ps resumed from connectivityservice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$500(Lcom/android/server/operator/op01/ConnectivityServiceExt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # setter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I
    invoke-static {v1, p2}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$402(Lcom/android/server/operator/op01/ConnectivityServiceExt;I)I

    goto :goto_0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    iput p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->mSubId:I

    return-void
.end method
